import '../../domain/entities/pokemon.dart';
import '../models/pokemon_dto.dart';

class PokemonMapper {
  const PokemonMapper._();

  static Pokemon toDomain(PokemonDto dto) {
    return Pokemon(
      id: dto.id,
      name: dto.name,
      types: dto.types.map((type) => type.name).toList(),
    );
  }
}
