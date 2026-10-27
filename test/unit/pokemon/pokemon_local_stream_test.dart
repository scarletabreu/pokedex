import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pokedex/core/database/app_database.dart';
import 'package:pokedex/features/pokemon/data/datasources/pokemon_local_datasource.dart';
import 'package:pokedex/features/pokemon/data/models/pokemon_dto.dart';
import 'package:pokedex/features/pokemon/data/repositories/pokemon_repository_impl.dart';

import 'package:pokedex/features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokedex/features/pokemon/data/repositories/catalog_sync_repository.dart';

class FakePokemonRemoteDataSource implements PokemonRemoteDataSource {
  @override
  Future<List<PokemonDto>> fetchCatalog({
    required int limit,
    required int offset,
  }) async {
    return [];
  }
}

void main() {
  late AppDatabase database;
  late DriftPokemonLocalDataSource local;
  late PokemonRepositoryImpl repository;

  setUp(() {
    database = AppDatabase(NativeDatabase.memory());

    local = DriftPokemonLocalDataSource(database);

    repository = PokemonRepositoryImpl(
      local: local,
      catalogSync: CatalogSyncRepository(
        local: local,
        remote: FakePokemonRemoteDataSource(),
      ),
    );
  });

  tearDown(() async {
    await database.close();
  });

  test('emite cambios automáticamente al guardar en SQLite', () async {
    final expectation = expectLater(
      repository.watchLocalCatalog(),
      emitsInOrder([
        isEmpty,
        isA<List>().having((items) => items.length, 'cantidad de Pokémon', 1),
      ]),
    );

    // Permite que Drift establezca la primera
    // observación de una base vacía.
    await Future<void>.delayed(const Duration(milliseconds: 50));

    await local.saveCatalogPage(
      limit: 20,
      offset: 0,
      pokemons: const [
        PokemonDto(
          id: 25,
          speciesId: 25,
          speciesName: 'pikachu',
          name: 'pikachu',
          imageUrl: null,
          types: [PokemonTypeDto(id: 13, name: 'electric', slot: 1)],
        ),
      ],
    );

    await expectation;
  });
}
