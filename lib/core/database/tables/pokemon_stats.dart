import 'package:drift/drift.dart';

import 'pokemons.dart';

class PokemonStats extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  TextColumn get statName => text()();

  IntColumn get baseValue => integer()();

  @override
  Set<Column> get primaryKey => {pokemonId, statName};
}
