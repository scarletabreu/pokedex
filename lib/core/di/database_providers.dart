import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/app_database.dart';
import '../database/daos/pokemon_dao.dart';
import '../database/daos/favorite_dao.dart';
import '../database/daos/sync_metadata_dao.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final database = AppDatabase.defaults();

  ref.onDispose(database.close);

  return database;
});

final pokemonDaoProvider = Provider<PokemonDao>((ref) {
  return ref.watch(appDatabaseProvider).pokemonDao;
});

final favoriteDaoProvider = Provider<FavoriteDao>((ref) {
  return ref.watch(appDatabaseProvider).favoriteDao;
});

final syncMetadataDaoProvider = Provider<SyncMetadataDao>((ref) {
  return ref.watch(appDatabaseProvider).syncMetadataDao;
});
