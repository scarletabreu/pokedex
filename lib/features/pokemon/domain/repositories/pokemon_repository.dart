import '../entities/pokemon.dart';

abstract interface class PokemonRepository {
  Stream<List<Pokemon>> watchAll();

  Stream<Pokemon?> watchById(int id);

  Future<void> refreshCatalog();
}
