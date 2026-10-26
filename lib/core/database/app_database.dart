import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

// Catalogo
import 'tables/pokemon_species.dart';
import 'tables/pokemons.dart';
import 'tables/types.dart';
import 'tables/pokemon_types.dart';
import 'tables/pokemon_stats.dart';

// Habilidades y movimientos
import 'tables/abilities.dart';
import 'tables/pokemon_abilities.dart';
import 'tables/moves.dart';
import 'tables/pokemon_moves.dart';

// Detalles
import 'tables/pokemon_images.dart';
import 'tables/evolution_links.dart';
import 'tables/egg_groups.dart';
import 'tables/species_egg_groups.dart';
import 'tables/type_efficacy.dart';
import 'tables/pokemon_game_appearances.dart';

// Usuario
import 'tables/favorites.dart';
import 'tables/trivia_results.dart';
import 'tables/achievements.dart';
import 'tables/unlocked_achievements.dart';
import 'tables/user_preferences.dart';

// Sincronizacion
import 'tables/sync_metadata.dart';
import 'tables/catalog_pages.dart';

// DAOs
import 'daos/pokemon_dao.dart';
import 'daos/favorite_dao.dart';
import 'daos/sync_metadata_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    PokemonSpecies,
    Pokemons,
    Types,
    PokemonTypes,
    PokemonStats,
    Abilities,
    PokemonAbilities,
    Moves,
    PokemonMoves,
    PokemonImages,
    EvolutionLinks,
    EggGroups,
    SpeciesEggGroups,
    TypeEfficacy,
    PokemonGameAppearances,
    Favorites,
    TriviaResults,
    Achievements,
    UnlockedAchievements,
    UserPreferences,
    SyncMetadata,
    CatalogPages,
  ],
  daos: [PokemonDao, FavoriteDao, SyncMetadataDao],
)
class AppDatabase extends _$AppDatabase {
  // Permite inyectar un executor para pruebas.
  AppDatabase(super.executor);

  // Base persistente en el dispositivo.
  AppDatabase.defaults() : super(driftDatabase(name: 'pokedex_db'));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );
}
