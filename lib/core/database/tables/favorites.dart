import 'package:drift/drift.dart';

import 'pokemons.dart';

class Favorites extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {pokemonId};
}
