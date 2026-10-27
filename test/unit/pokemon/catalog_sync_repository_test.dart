import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/core/database/app_database.dart';
import 'package:pokedex/features/pokemon/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/features/pokemon/data/models/pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/repositories/catalog_sync_repository.dart';

class FakePokemonRemoteDataSource implements PokemonRemoteDataSource {
  @override
  Future<List<PokemonDto>> fetchCatalog({
    required int limit,
    required int offset,
  }) async {
    if (offset != 0) {
      return [];
    }

    return const [
      PokemonDto(
        id: 25,
        speciesId: 25,
        speciesName: 'pikachu',
        name: 'pikachu',
        imageUrl: null,
        types: [PokemonTypeDto(id: 13, name: 'electric', slot: 1)],
      ),
    ];
  }
}

void main() {
  late AppDatabase database;
  late CatalogSyncRepository repository;

  setUp(() {
    database = AppDatabase(NativeDatabase.memory());

    repository = CatalogSyncRepository(
      remote: FakePokemonRemoteDataSource(),
      local: DriftPokemonLocalDataSource(database),
    );
  });

  tearDown(() async {
    await database.close();
  });

  test('guarda un Pokemon en SQLite', () async {
    await repository.syncPage(limit: 20, offset: 0);

    final pokemons = await database.select(database.pokemons).get();

    expect(pokemons.length, 1);
    expect(pokemons.first.id, 25);
    expect(pokemons.first.name, 'pikachu');
  });

  test('no duplica Pokemon al sincronizar dos veces', () async {
    await repository.syncPage(limit: 20, offset: 0);
    await repository.syncPage(limit: 20, offset: 0);

    final pokemons = await database.select(database.pokemons).get();

    final types = await database.select(database.pokemonTypes).get();

    expect(pokemons.length, 1);
    expect(types.length, 1);
  });

  test('registra metadatos de sincronizacion', () async {
    await repository.syncPage(limit: 20, offset: 0);

    final metadata = await database.select(database.syncMetadata).get();

    expect(metadata.length, 1);
    expect(metadata.first.status, 'completed');
    expect(metadata.first.lastSuccessAt, isNotNull);
  });

  test('registra la pagina descargada', () async {
    await repository.syncPage(limit: 20, offset: 0);

    final pages = await database.select(database.catalogPages).get();

    expect(pages.length, 1);
    expect(pages.first.offset, 0);
    expect(pages.first.returnedCount, 1);
  });

  test('sincroniza una pagina vacia sin errores', () async {
    await repository.syncPage(limit: 20, offset: 20);

    final pokemons = await database.select(database.pokemons).get();

    final pages = await database.select(database.catalogPages).get();

    expect(pokemons, isEmpty);
    expect(pages.length, 1);
    expect(pages.first.returnedCount, 0);
  });
}
