import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/favorites.dart';

part 'favorite_dao.g.dart';

@DriftAccessor(tables: [Favorites])
class FavoriteDao extends DatabaseAccessor<AppDatabase>
    with _$FavoriteDaoMixin {
  FavoriteDao(super.db);

  Stream<List<Favorite>> watchAll() {
    return select(favorites).watch();
  }

  Stream<bool> watchIsFavorite(int pokemonId) {
    return (select(favorites)..where((f) => f.pokemonId.equals(pokemonId)))
        .watch()
        .map((rows) => rows.isNotEmpty)
        .distinct();
  }

  Future<void> add(int pokemonId) async {
    await into(favorites).insert(
      FavoritesCompanion.insert(
        pokemonId: Value(pokemonId),
        createdAt: DateTime.now(),
      ),
      mode: InsertMode.insertOrIgnore,
    );
  }

  Future<void> remove(int pokemonId) async {
    await (delete(favorites)..where((f) => f.pokemonId.equals(pokemonId))).go();
  }
}
