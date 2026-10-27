import '../datasources/pokemon_local_datasource.dart';
import '../datasources/pokemon_remote_datasource.dart';

class CatalogSyncRepository {
  final PokemonRemoteDataSource remote;
  final PokemonLocalDataSource local;

  const CatalogSyncRepository({required this.remote, required this.local});

  Future<int> syncPage({required int limit, required int offset}) async {
    final pokemons = await remote.fetchCatalog(limit: limit, offset: offset);

    await local.saveCatalogPage(
      pokemons: pokemons,
      limit: limit,
      offset: offset,
    );

    return pokemons.length;
  }
}
