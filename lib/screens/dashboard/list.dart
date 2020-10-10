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
String basicPosts = """
query Posts {
  posts {
    nodes {
      authorId
      title
    }
  }
}

""";

class _BlogListState extends State<BlogList> {
  @override
  Widget build(BuildContext context) {
    return ListStyle();
  }
}

class ListStyle extends StatelessWidget {
  const ListStyle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Query(
          options: QueryOptions(documentNode: gql(basicPosts)),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }
            if (result.loading) {
              return Text('Loading');
            }
            print(result.data['posts']['nodes']);
            return ListView.builder(
                itemCount: result.data['posts']['nodes'].length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(result.data['posts']['nodes'][index]['title'])
                          ],
                        ),
                      ),
                    ],
                  );
                });
          }),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.favorite),
      ),
    );
  }
}
