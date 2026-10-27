import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

import '../network/graphql_client_factory.dart';
import 'database_providers.dart';

import '../../features/pokemon/data/datasources/pokemon_local_datasource.dart';
import '../../features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import '../../features/pokemon/data/repositories/catalog_sync_repository.dart';

final graphQLClientProvider = Provider<GraphQLClient>((ref) {
  return GraphQLClientFactory.create();
});

final pokemonRemoteDataSourceProvider = Provider<PokemonRemoteDataSource>((
  ref,
) {
  return GraphQLPokemonRemoteDataSource(ref.watch(graphQLClientProvider));
});

final pokemonLocalDataSourceProvider = Provider<PokemonLocalDataSource>((ref) {
  return DriftPokemonLocalDataSource(ref.watch(appDatabaseProvider));
});

final catalogSyncRepositoryProvider = Provider<CatalogSyncRepository>((ref) {
  return CatalogSyncRepository(
    remote: ref.watch(pokemonRemoteDataSourceProvider),
    local: ref.watch(pokemonLocalDataSourceProvider),
  );
});
