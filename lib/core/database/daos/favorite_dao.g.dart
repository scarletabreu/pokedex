// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_dao.dart';

// ignore_for_file: type=lint
mixin _$FavoriteDaoMixin on DatabaseAccessor<AppDatabase> {
  $PokemonSpeciesTable get pokemonSpecies => attachedDatabase.pokemonSpecies;
  $PokemonsTable get pokemons => attachedDatabase.pokemons;
  $FavoritesTable get favorites => attachedDatabase.favorites;
  FavoriteDaoManager get managers => FavoriteDaoManager(this);
}

class FavoriteDaoManager {
  final _$FavoriteDaoMixin _db;
  FavoriteDaoManager(this._db);
  $$PokemonSpeciesTableTableManager get pokemonSpecies =>
      $$PokemonSpeciesTableTableManager(
        _db.attachedDatabase,
        _db.pokemonSpecies,
      );
  $$PokemonsTableTableManager get pokemons =>
      $$PokemonsTableTableManager(_db.attachedDatabase, _db.pokemons);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db.attachedDatabase, _db.favorites);
}
