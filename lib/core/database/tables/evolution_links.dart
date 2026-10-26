import 'package:drift/drift.dart';

import 'pokemon_species.dart';

class EvolutionLinks extends Table {
  IntColumn get fromSpeciesId => integer().references(PokemonSpecies, #id)();

  IntColumn get toSpeciesId => integer().references(PokemonSpecies, #id)();

  TextColumn get trigger => text()();

  IntColumn get minLevel => integer().nullable()();

  TextColumn get itemName => text().nullable()();

  IntColumn get minHappiness => integer().nullable()();

  TextColumn get timeOfDay => text().nullable()();

  TextColumn get conditionsJson => text().nullable()();

  @override
  Set<Column> get primaryKey => {fromSpeciesId, toSpeciesId};
}
