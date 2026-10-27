import '../../domain/entities/pokemon.dart';
import '../../domain/repositories/pokemon_repository.dart';

import '../datasources/pokemon_local_datasource.dart';
import '../mappers/pokemon_mapper.dart';
import 'catalog_sync_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonLocalDataSource local;
  final CatalogSyncRepository catalogSync;

  PokemonRepositoryImpl({required this.local, required this.catalogSync});

  /// Observa el catálogo almacenado en SQLite.
  @override
  Stream<List<Pokemon>> watchLocalCatalog() {
    return local.watchCatalog().map(
      (records) => records.map(PokemonMapper.fromLocal).toList(growable: false),
    );
  }

  /// Observa un Pokémon por su identificador.
  @override
  Stream<Pokemon?> watchById(int id) {
    return watchLocalCatalog().map((pokemons) {
      for (final pokemon in pokemons) {
        if (pokemon.id == id) {
          return pokemon;
        }
      }

      return null;
    });
  }

  /// Actualiza una página del catálogo desde PokeAPI.
  Future<int> refreshCatalogPage({required int limit, required int offset}) {
    return catalogSync.syncPage(limit: limit, offset: offset);
  }

  /// Actualiza la primera página del catálogo.
  @override
  Future<void> refreshCatalog() async {
    await refreshCatalogPage(limit: 20, offset: 0);
  }
}
