import 'package:drift/drift.dart';

import 'pokemons.dart';

class PokemonGameAppearances extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  IntColumn get versionId => integer()();

  TextColumn get versionName => text()();

  TextColumn get regionName => text().nullable()();

  @override
  Set<Column> get primaryKey => {pokemonId, versionId};
}
