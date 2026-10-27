import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/pokemons.dart';
import '../tables/pokemon_types.dart';
import '../tables/types.dart';

part 'pokemon_dao.g.dart';

/// Representa un Pokémon con sus tipos,
class PokemonCatalogRecord {
  final PokemonRow pokemon;
  final List<String> types;

  const PokemonCatalogRecord({required this.pokemon, required this.types});
}

@DriftAccessor(tables: [Pokemons, PokemonTypes, Types])
class PokemonDao extends DatabaseAccessor<AppDatabase> with _$PokemonDaoMixin {
  PokemonDao(super.db);

  /// Observa todos los Pokémon locales.
  Stream<List<PokemonRow>> watchAll() {
    return (select(pokemons)..orderBy([(p) => OrderingTerm.asc(p.id)])).watch();
  }

  /// Observa un Pokémon por su ID.
  Stream<PokemonRow?> watchById(int id) {
    return (select(
      pokemons,
    )..where((p) => p.id.equals(id))).watchSingleOrNull();
  }

  /// Obtiene un Pokémon sin suscripción reactiva.
  Future<PokemonRow?> getById(int id) {
    return (select(pokemons)..where((p) => p.id.equals(id))).getSingleOrNull();
  }

  /// Observa el catálogo junto con sus tipos.
  /// Utiliza LEFT JOIN para incluir Pokémon
  /// aunque todavía no tengan tipos descargados.
  Stream<List<PokemonCatalogRecord>> watchCatalog() {
    final query = select(pokemons).join([
      leftOuterJoin(
        pokemonTypes,
        pokemonTypes.pokemonId.equalsExp(pokemons.id),
      ),
      leftOuterJoin(types, types.id.equalsExp(pokemonTypes.typeId)),
    ]);

    query.orderBy([
      OrderingTerm.asc(pokemons.id),
      OrderingTerm.asc(pokemonTypes.slot),
    ]);

    return query.watch().map((rows) {
      final pokemonById = <int, PokemonRow>{};
      final typesByPokemonId = <int, List<String>>{};

      for (final row in rows) {
        final pokemon = row.readTable(pokemons);
        final type = row.readTableOrNull(types);

        pokemonById[pokemon.id] = pokemon;

        final pokemonTypesList = typesByPokemonId.putIfAbsent(
          pokemon.id,
          () => [],
        );

        if (type != null) {
          pokemonTypesList.add(type.name);
        }
      }

      return [
        for (final pokemon in pokemonById.values)
          PokemonCatalogRecord(
            pokemon: pokemon,
            types: List.unmodifiable(typesByPokemonId[pokemon.id] ?? []),
          ),
      ];
    });
  }

  /// Inserta o actualiza un Pokémon.
  Future<void> upsertPokemon(PokemonsCompanion pokemon) async {
    await into(pokemons).insertOnConflictUpdate(pokemon);
  }

  /// Inserta o actualiza varios Pokémon
  /// dentro de una transacción.
  Future<void> upsertPokemons(List<PokemonsCompanion> records) async {
    await transaction(() async {
      await batch((batch) {
        batch.insertAllOnConflictUpdate(pokemons, records);
      });
    });
  }

  /// Busca Pokémon por nombre en SQLite.
  Future<List<PokemonRow>> searchByName(String search) {
    final escaped = search
        .trim()
        .replaceAll(r'\', r'\\')
        .replaceAll('%', r'\%')
        .replaceAll('_', r'\_');

    return (select(pokemons)
          ..where((p) => p.name.like('%$escaped%', escapeChar: r'\'))
          ..orderBy([(p) => OrderingTerm.asc(p.id)]))
        .get();
  }

  Stream<List<PokemonRow>> watchSearchByName(String search) {
    final escaped = search
        .trim()
        .replaceAll(r'\', r'\\')
        .replaceAll('%', r'\%')
        .replaceAll('_', r'\_');

    return (select(pokemons)
          ..where((p) => p.name.like('%$escaped%', escapeChar: r'\'))
          ..orderBy([(p) => OrderingTerm.asc(p.id)]))
        .watch();
  }
}
