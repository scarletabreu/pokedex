class PokemonTypeDto {
  final int id;
  final String name;
  final int slot;

  const PokemonTypeDto({
    required this.id,
    required this.name,
    required this.slot,
  });

  factory PokemonTypeDto.fromJson(Map<String, dynamic> json) {
    final rawType = json['type'];

    if (rawType is! Map) {
      throw const FormatException('El tipo del Pokémon no es válido.');
    }

    final type = Map<String, dynamic>.from(rawType);

    final id = type['id'];
    final name = type['name'];
    final slot = json['slot'];

    if (id is! int ||
        id <= 0 ||
        name is! String ||
        name.trim().isEmpty ||
        slot is! int ||
        slot <= 0) {
      throw const FormatException('Información de tipo incompleta o inválida.');
    }

    return PokemonTypeDto(id: id, name: name, slot: slot);
  }
}

class PokemonDto {
  final int id;
  final int speciesId;
  final String speciesName;
  final String name;
  final String? imageUrl;
  final List<PokemonTypeDto> types;

  const PokemonDto({
    required this.id,
    required this.speciesId,
    required this.speciesName,
    required this.name,
    required this.imageUrl,
    required this.types,
  });

  factory PokemonDto.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final speciesId = json['pokemon_species_id'];
    final name = json['name'];

    if (id is! int || id <= 0) {
      throw const FormatException('El ID del Pokémon es inválido.');
    }

    if (speciesId is! int || speciesId <= 0) {
      throw const FormatException('El ID de la especie es inválido.');
    }

    if (name is! String || name.trim().isEmpty) {
      throw const FormatException('El nombre del Pokémon es inválido.');
    }

    final rawSpecies = json['pokemonspecy'];

    String? speciesName;

    if (rawSpecies is Map) {
      final species = Map<String, dynamic>.from(rawSpecies);

      final value = species['name'];

      if (value is String && value.trim().isNotEmpty) {
        speciesName = value;
      }
    }

    speciesName ??= name;

    // 3. Tipos del Pokémon.
    final rawTypes = json['pokemontypes'];

    if (rawTypes is! List) {
      throw const FormatException('La lista de tipos no es válida.');
    }

    final types = rawTypes.map((item) {
      if (item is! Map) {
        throw const FormatException('Registro de tipo inválido.');
      }

      return PokemonTypeDto.fromJson(Map<String, dynamic>.from(item));
    }).toList();

    if (types.isEmpty || types.length > 2) {
      throw const FormatException(
        'El Pokémon debe tener entre uno y dos tipos.',
      );
    }

    if (types.map((type) => type.id).toSet().length != types.length) {
      throw const FormatException(
        'Pokémon con tipos duplicados en el catálogo.',
      );
    }

    final rawSprites = json['pokemonsprites'];

    final sprites = rawSprites is List ? rawSprites : const [];

    String? imageUrl;

    if (sprites.isNotEmpty && sprites.first is Map) {
      final sprite = Map<String, dynamic>.from(sprites.first as Map);

      final value = sprite['sprites'];

      if (value is String &&
          value.trim().isNotEmpty &&
          Uri.tryParse(value)?.hasAbsolutePath == true) {
        imageUrl = value;
      }
    }

    return PokemonDto(
      id: id,
      speciesId: speciesId,
      speciesName: speciesName,
      name: name,
      imageUrl: imageUrl,
      types: types,
    );
  }
}
