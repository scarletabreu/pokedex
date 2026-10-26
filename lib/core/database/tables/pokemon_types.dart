import 'package:drift/drift.dart';

import 'pokemons.dart';
import 'types.dart';

class PokemonTypes extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  IntColumn get typeId => integer().references(Types, #id)();

  IntColumn get slot => integer()();

  @override
  Set<Column> get primaryKey => {pokemonId, typeId};
}
