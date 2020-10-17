import 'package:beerbiceps/constants/db.dart';
import 'package:beerbiceps/screens/dashboard/list.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class FullData extends StatelessWidget {
  final ListStyle todo;

  // In the constructor, require a Todo.
  FullData({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Database.instance.graphQLProvider(
        child: Query(
            options: QueryOptions(documentNode: gql(withAuthors)),
            builder: (QueryResult result,
                {VoidCallback refetch, FetchMore fetchMore}) {
              if (result.hasException) {
                return Text(result.exception.toString());
              }
              if (result.loading) {
                return Image.network(
                    'https://beerbiceps2.adesignguy.co/wp-content/uploads/2020/09/0M-Recovered-1-1.gif');
              }

              Container(
                child: Text(result.data['posts']['nodes'][0]),
              );
            }));
  }
}
