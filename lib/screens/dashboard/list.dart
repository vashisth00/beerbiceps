import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BlogList extends StatefulWidget {
  @override
  _BlogListState createState() => _BlogListState();
}

String readRepositories = """
    query MyQuery {
            posts(last: 30) {
              edges {
               node {
                 title
                 slug
                 id
               }
              }
           }
          }
""";

class _BlogListState extends State<BlogList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // Fetch last 30 posts
      // ignore: deprecated_member_use
      body: Query(
          options: QueryOptions(documentNode: gql(readRepositories)),
          builder: (null)),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.favorite),
      ),
    );
  }
}
