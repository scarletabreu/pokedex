import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/pokemons.dart';

part 'pokemon_dao.g.dart';

@DriftAccessor(tables: [Pokemons])
class PokemonDao extends DatabaseAccessor<AppDatabase> with _$PokemonDaoMixin {
  PokemonDao(super.db);

  // Consultar todos los Pokémon de manera reactiva.
  Stream<List<PokemonRow>> watchAll() {
    return (select(pokemons)..orderBy([(p) => OrderingTerm.asc(p.id)])).watch();
  }

  // Observar un Pokémon específico.
  Stream<PokemonRow?> watchById(int id) {
    return (select(
      pokemons,
    )..where((p) => p.id.equals(id))).watchSingleOrNull();
  }

  // Obtener un Pokémon.
  Future<PokemonRow?> getById(int id) {
    return (select(pokemons)..where((p) => p.id.equals(id))).getSingleOrNull();
  }

  // Insertar o actualizar un Pokémon.
  Future<void> upsertPokemon(PokemonsCompanion record) async {
    await into(pokemons).insertOnConflictUpdate(record);
  }

  // Insertar o actualizar varios Pokémon.
  Future<void> upsertPokemons(List<PokemonsCompanion> records) async {
    await transaction(() async {
      await batch((batch) {
        batch.insertAllOnConflictUpdate(pokemons, records);
      });
    });
  }

  // Buscar por nombre usando datos locales.
  Stream<List<PokemonRow>> watchSearch(String search) {
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
