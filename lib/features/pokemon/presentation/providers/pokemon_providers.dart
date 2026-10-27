import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/di/graphql_providers.dart';
import '../../data/repositories/pokemon_repository_impl.dart';
import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';
import 'pokemon_filters_notifier.dart';

/// Repositorio principal del catálogo.
final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  final local = ref.watch(pokemonLocalDataSourceProvider);

  final catalogSync = ref.watch(catalogSyncRepositoryProvider);

  return PokemonRepositoryImpl(local: local, catalogSync: catalogSync);
});

/// Catálogo observado desde la base de datos local.
final pokemonCatalogProvider = StreamProvider.autoDispose<List<Pokemon>>((ref) {
  final repository = ref.watch(pokemonRepositoryProvider);

  return repository.watchLocalCatalog();
});

/// Catálogo filtrado utilizando los datos locales.
final filteredPokemonCatalogProvider = Provider<AsyncValue<List<Pokemon>>>((
  ref,
) {
  final catalog = ref.watch(pokemonCatalogProvider);

  final filters = ref.watch(pokemonFiltersProvider);

  return catalog.whenData((pokemons) {
    final query = filters.searchQuery.trim().toLowerCase();

    return pokemons
        .where((pokemon) {
          final matchesSearch =
              query.isEmpty ||
              pokemon.name.toLowerCase().contains(query) ||
              pokemon.id.toString() == query;

          final matchesType =
              filters.selectedType == null ||
              pokemon.types.any(
                (type) =>
                    type.toLowerCase() == filters.selectedType!.toLowerCase(),
              );

          return matchesSearch && matchesType;
        })
        .toList(growable: false);
  });
});

/// Catálogo local ordenado según los filtros activos.
final sortedPokemonCatalogProvider = Provider<AsyncValue<List<Pokemon>>>((ref) {
  final filtered = ref.watch(filteredPokemonCatalogProvider);

  final filters = ref.watch(pokemonFiltersProvider);

  return filtered.whenData((pokemons) {
    final sorted = [...pokemons];

    switch (filters.sortOrder) {
      case PokemonSortOrder.numberAscending:
        sorted.sort((a, b) => a.id.compareTo(b.id));

      case PokemonSortOrder.numberDescending:
        sorted.sort((a, b) => b.id.compareTo(a.id));

      case PokemonSortOrder.nameAscending:
        sorted.sort((a, b) => a.name.compareTo(b.name));

      case PokemonSortOrder.nameDescending:
        sorted.sort((a, b) => b.name.compareTo(a.name));
    }

    return List.unmodifiable(sorted);
  });
});
