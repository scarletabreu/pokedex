import '../../domain/entities/pokemon.dart';
import '../models/pokemon_dto.dart';
import '../../../../core/database/daos/pokemon_dao.dart';

class PokemonMapper {
  const PokemonMapper._();

  static Pokemon toDomain(PokemonDto dto) {
    return Pokemon(
      id: dto.id,
      name: dto.name,
      types: dto.types.map((type) => type.name).toList(),
    );
  }

  static Pokemon fromLocal(PokemonCatalogRecord record) {
    return Pokemon(
      id: record.pokemon.id,
      name: record.pokemon.name,
      types: record.types,
    );
  }
}
