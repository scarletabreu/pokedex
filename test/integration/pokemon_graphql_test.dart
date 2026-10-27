import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/core/database/app_database.dart';
import 'package:pokedex/core/network/graphql_client_factory.dart';
import 'package:pokedex/features/pokemon/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/features/pokemon/data/repositories/catalog_sync_repository.dart';

void main() {
  test('descarga dos páginas reales y las guarda en SQLite', () async {
    final database = AppDatabase(NativeDatabase.memory());

    try {
      final client = GraphQLClientFactory.create();

      final repository = CatalogSyncRepository(
        remote: GraphQLPokemonRemoteDataSource(client),
        local: DriftPokemonLocalDataSource(database),
      );

      final firstCount = await repository.syncPage(limit: 10, offset: 0);

      final secondCount = await repository.syncPage(limit: 10, offset: 10);

      final pokemons = await database.select(database.pokemons).get();

      final pages = await database.select(database.catalogPages).get();

      expect(firstCount, 10);
      expect(secondCount, 10);
      expect(pokemons.length, 20);
      expect(pokemons.map((p) => p.id).toSet().length, 20);
      expect(pages.length, 2);

      await repository.syncPage(limit: 10, offset: 0);

      final afterResync = await database.select(database.pokemons).get();

      expect(afterResync.length, 20);
    } finally {
      await database.close();
    }
  }, timeout: const Timeout(Duration(minutes: 2)));
}
