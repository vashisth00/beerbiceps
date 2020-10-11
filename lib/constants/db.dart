import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Database {
  static final Database instance = Database._();

  Database._();

  final HttpLink httpLink = HttpLink(
    uri: 'https://beerbiceps2.adesignguy.co/graphql',
  );

  GraphQLProvider graphQLProvider({
    @required final Widget child,
  }) {
    return GraphQLProvider(
      client: dtb,
      child: child,
    );
  }
 

  ValueNotifier<GraphQLClient> get dtb {
    return ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: HttpLink(uri: 'https://beerbiceps2.adesignguy.co/graphql'),
      ),
    );
  }
}
