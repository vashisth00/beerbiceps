import 'package:beerbiceps/screens/dashboard/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Database extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(
      uri: 'https://beerbiceps2.adesignguy.co/graphql',
    );
    // ignore: unused_local_variable
    final ValueNotifier<GraphQLClient> dtb = ValueNotifier(
      GraphQLClient(
        cache: InMemoryCache(),
        link: httpLink,
      ),
    );

    return GraphQLProvider(
      client: dtb,
      child: ListStyle(),
    );
  }
}
