import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  final HttpLink httpLink = HttpLink(
    uri: 'https://beerbiceps2.adesignguy.co/graphql',
  );

  //Hide Auth from here
  //final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: InMemoryCache(),
      // link: link,
      link: httpLink,
    ),
  );
}
