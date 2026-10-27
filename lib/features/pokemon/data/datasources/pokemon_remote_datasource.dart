import 'package:graphql/client.dart';

import '../models/pokemon_dto.dart';

abstract interface class PokemonRemoteDataSource {
  Future<List<PokemonDto>> fetchCatalog({
    required int limit,
    required int offset,
  });
}

class GraphQLPokemonRemoteDataSource implements PokemonRemoteDataSource {
  final GraphQLClient client;

  GraphQLPokemonRemoteDataSource(this.client);

  static const _catalogQuery = r'''
    query GetPokemonCatalog($limit: Int!, $offset: Int!) {
      pokemon(
        limit: $limit
        offset: $offset
        order_by: { id: asc }
      ) {
        id
        pokemon_species_id
        name

        pokemontypes(order_by: { slot: asc }) {
          slot
          type {
            id
            name
          }
        }

        pokemonsprites {
          sprites(path: "other.official-artwork.front_default")
        }
      }
    }
  ''';

  @override
  Future<List<PokemonDto>> fetchCatalog({
    required int limit,
    required int offset,
  }) async {
    if (limit <= 0 || limit > 100 || offset < 0) {
      throw ArgumentError('Parametros inválidos: limit=$limit, offset=$offset');
    }

    final result = await client.query(
      QueryOptions(
        document: gql(_catalogQuery),
        variables: {'limit': limit, 'offset': offset},
        fetchPolicy: FetchPolicy.noCache,
        errorPolicy: ErrorPolicy.none,
      ),
    );

    if (result.hasException) {
      throw StateError('GraphQL request failed: ${result.exception}');
    }

    final response = result.data;

    if (response == null || response['pokemon'] is! List) {
      throw const FormatException(
        'Missing Pokemon catalog in GraphQL response',
      );
    }

    final records = response['pokemon'] as List;

    if (records.length > limit) {
      throw const FormatException('Tamaño de página de catálogo inesperada');
    }

    final pokemons = records.map((item) {
      return PokemonDto.fromJson(Map<String, dynamic>.from(item as Map));
    }).toList();

    final ids = pokemons.map((p) => p.id).toSet();

    if (ids.length != pokemons.length) {
      throw const FormatException(
        'IDs de pokemones duplicados en el API de respuesta',
      );
    }

    return pokemons;
  }
}
