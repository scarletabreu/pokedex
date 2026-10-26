import 'package:drift/drift.dart';

import 'pokemons.dart';
import 'moves.dart';

@TableIndex(
  name: 'idx_pokemon_moves_lookup',
  columns: {#pokemonId, #versionGroupId, #method},
)
class PokemonMoves extends Table {
  IntColumn get pokemonId => integer().references(Pokemons, #id)();

  IntColumn get moveId => integer().references(Moves, #id)();

  IntColumn get versionGroupId => integer()();

  TextColumn get method => text()();

  IntColumn get levelLearnedAt => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {
    pokemonId,
    moveId,
    versionGroupId,
    method,
    levelLearnedAt,
  };
}
