import 'package:drift/drift.dart';

import '../../../../core/database/app_database.dart';
import '../models/pokemon_dto.dart';

abstract interface class PokemonLocalDataSource {
  Future<void> saveCatalogPage({
    required List<PokemonDto> pokemons,
    required int limit,
    required int offset,
  });
}

class DriftPokemonLocalDataSource implements PokemonLocalDataSource {
  final AppDatabase db;

  DriftPokemonLocalDataSource(this.db);

  @override
  Future<void> saveCatalogPage({
    required List<PokemonDto> pokemons,
    required int limit,
    required int offset,
  }) async {
    if (limit <= 0 || offset < 0) {
      throw ArgumentError(
        'Parametros de la página inválidos: limit=$limit, offset=$offset',
      );
    }

    if (pokemons.length > limit) {
      throw ArgumentError(
        'La página excede el límite de pedido: limit=$limit, pokemons=${pokemons.length}',
      );
    }

    final uniqueIds = pokemons.map((p) => p.id).toSet();
    if (uniqueIds.length != pokemons.length) {
      throw ArgumentError(
        'IDs de Pokémon duplicados en la página: ${pokemons.map((p) => p.id)}',
      );
    }

    final now = DateTime.now().toUtc();
    final pageKey = 'catalog:$limit:$offset';

    await db.transaction(() async {
      for (final pokemon in pokemons) {
        await db
            .into(db.pokemonSpecies)
            .insertOnConflictUpdate(
              PokemonSpeciesCompanion.insert(
                id: Value(pokemon.speciesId),
                name: pokemon.speciesName,
              ),
            );

        for (final type in pokemon.types) {
          await db
              .into(db.types)
              .insertOnConflictUpdate(
                TypesCompanion.insert(id: Value(type.id), name: type.name),
              );
        }

        await db
            .into(db.pokemons)
            .insertOnConflictUpdate(
              PokemonsCompanion.insert(
                id: Value(pokemon.id),
                speciesId: Value(pokemon.speciesId),
                name: pokemon.name,
                updatedAt: now,
              ),
            );

        await (db.delete(
          db.pokemonTypes,
        )..where((row) => row.pokemonId.equals(pokemon.id))).go();

        for (final type in pokemon.types) {
          await db
              .into(db.pokemonTypes)
              .insert(
                PokemonTypesCompanion.insert(
                  pokemonId: pokemon.id,
                  typeId: type.id,
                  slot: type.slot,
                ),
              );
        }

        if (pokemon.imageUrl != null) {
          await db
              .into(db.pokemonImages)
              .insert(
                PokemonImagesCompanion.insert(
                  pokemonId: pokemon.id,
                  kind: 'official',
                  remoteUrl: Value(pokemon.imageUrl),
                ),
                onConflict: DoUpdate(
                  (old) => PokemonImagesCompanion(
                    remoteUrl: Value(pokemon.imageUrl),
                  ),
                  target: [db.pokemonImages.pokemonId, db.pokemonImages.kind],
                ),
              );
        }
      }

      await db
          .into(db.catalogPages)
          .insertOnConflictUpdate(
            CatalogPagesCompanion.insert(
              pageKey: pageKey,
              offset: offset,
              pageSize: limit,
              returnedCount: pokemons.length,
              fetchedAt: now,
            ),
          );

      await db
          .into(db.syncMetadata)
          .insertOnConflictUpdate(
            SyncMetadataCompanion.insert(
              resourceKey: pageKey,
              status: 'completed',
              lastAttemptAt: Value(now),
              lastSuccessAt: Value(now),
              lastError: const Value(null),
              failureCount: const Value(0),
            ),
          );
    });
  }
}
