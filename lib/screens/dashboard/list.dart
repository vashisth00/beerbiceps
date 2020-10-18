import 'package:beerbiceps/constants/db.dart';
import 'package:beerbiceps/models/getblogs.dart';
import 'package:beerbiceps/queries/query/blogsdata.dart';
import 'package:beerbiceps/screens/blog/favourite.dart';
import 'package:beerbiceps/screens/dashboard/info.dart';
import 'package:beerbiceps/screens/elements/blogtile.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BlogList extends StatefulWidget {
  @override
  _BlogListState createState() => _BlogListState();
}

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
      body: Database.instance.graphQLProvider(
        child: Query(
            options: QueryOptions(documentNode: gql(allData)),
            builder: (QueryResult result,
                {VoidCallback refetch, FetchMore fetchMore}) {
              if (result.hasException) {
                return Text(result.exception.toString());
              }
              if (result.loading) {
                return Image.network(
                    'https://beerbiceps2.adesignguy.co/wp-content/uploads/2020/09/0M-Recovered-1-1.gif');
              }
              List repo = result.data['posts']['nodes'];
              return ListView.builder(
                  itemCount: repo.length,
                  itemBuilder: (context, index) {
                    var data = NodeElement.fromJson(repo[index]);
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FullData(),
                              settings: RouteSettings(arguments: data)),
                        );
                      },
                      child: BlogHeader(data: data),
                    );
                  });
            }),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => FavouritePage()));
        },
        child: Icon(Icons.favorite),
      ),
    );
  }
}
