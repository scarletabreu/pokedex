import 'package:graphql/client.dart';

class GraphQLClientFactory {
  static const endpoint = 'https://graphql.pokeapi.co/v1beta2';

  static GraphQLClient create() {
    return GraphQLClient(link: HttpLink(endpoint), cache: GraphQLCache());
  }
}
