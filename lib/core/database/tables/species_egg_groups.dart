import 'package:drift/drift.dart';

import 'pokemon_species.dart';
import 'egg_groups.dart';

class SpeciesEggGroups extends Table {
  IntColumn get speciesId => integer().references(PokemonSpecies, #id)();

  IntColumn get eggGroupId => integer().references(EggGroups, #id)();

  @override
  Set<Column> get primaryKey => {speciesId, eggGroupId};
}
