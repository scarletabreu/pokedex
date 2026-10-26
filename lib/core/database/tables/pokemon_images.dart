import 'package:drift/drift.dart';

import 'pokemons.dart';

class PokemonImages extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  TextColumn get kind => text()();

  TextColumn get remoteUrl => text().nullable()();

  TextColumn get localPath => text().nullable()();

  DateTimeColumn get cachedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {pokemonId, kind};
}
