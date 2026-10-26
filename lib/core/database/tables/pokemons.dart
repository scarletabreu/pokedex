import 'package:drift/drift.dart';

import 'pokemon_species.dart';

@DataClassName('PokemonRow')
@TableIndex(name: 'idx_pokemon_name', columns: {#name})
@TableIndex(name: 'idx_pokemon_species', columns: {#speciesId})
@TableIndex(name: 'idx_pokemon_total', columns: {#baseStatTotal})
class Pokemons extends Table {
  IntColumn get id => integer()();

  IntColumn get speciesId =>
      integer().nullable().references(PokemonSpecies, #id)();

  TextColumn get name => text()();

  IntColumn get height => integer().nullable()();

  IntColumn get weight => integer().nullable()();

  IntColumn get baseStatTotal => integer().nullable()();

  BoolColumn get isDefault => boolean().withDefault(const Constant(true))();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
