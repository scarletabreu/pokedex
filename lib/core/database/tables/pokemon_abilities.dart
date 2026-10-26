import 'package:drift/drift.dart';

import 'pokemons.dart';
import 'abilities.dart';

class PokemonAbilities extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  IntColumn get abilityId => integer().references(Abilities, #id)();

  IntColumn get slot => integer()();

  BoolColumn get isHidden => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {pokemonId, abilityId};
}
