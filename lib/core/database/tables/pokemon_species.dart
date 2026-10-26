import 'package:drift/drift.dart';

class PokemonSpecies extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  IntColumn get generationId => integer().nullable()();

  IntColumn get evolutionChainId => integer().nullable()();

  BoolColumn get isLegendary => boolean().withDefault(const Constant(false))();

  BoolColumn get isMythical => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
