import '../entities/pokemon.dart';

abstract interface class PokemonRepository {
  Stream<Pokemon?> watchById(int id);

  Future<void> refreshCatalog();

  Stream<List<Pokemon>> watchLocalCatalog();
}
