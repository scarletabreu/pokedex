// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_dao.dart';

// ignore_for_file: type=lint
mixin _$PokemonDaoMixin on DatabaseAccessor<AppDatabase> {
  $PokemonSpeciesTable get pokemonSpecies => attachedDatabase.pokemonSpecies;
  $PokemonsTable get pokemons => attachedDatabase.pokemons;
  PokemonDaoManager get managers => PokemonDaoManager(this);
}

class PokemonDaoManager {
  final _$PokemonDaoMixin _db;
  PokemonDaoManager(this._db);
  $$PokemonSpeciesTableTableManager get pokemonSpecies =>
      $$PokemonSpeciesTableTableManager(
        _db.attachedDatabase,
        _db.pokemonSpecies,
      );
  $$PokemonsTableTableManager get pokemons =>
      $$PokemonsTableTableManager(_db.attachedDatabase, _db.pokemons);
}
