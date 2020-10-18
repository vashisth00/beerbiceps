import 'package:beerbiceps/constants/db.dart';
import 'package:beerbiceps/models/getblogs.dart';
import 'package:beerbiceps/queries/query/blogsdata.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'dart:convert';

class FullData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String mydata = ModalRoute.of(context).settings.arguments;
    // final welcome = welcomeFromJson(jsonDecode(source));
    //final String ee = mydata.startsWith('authorId', 1) as String;
    //final alljson = jsonDecode(mydata);

    // Map<String, dynamic> toJson() => {
    //   dynamic jsonDecode(String source, {Object Function(Object, Object) reviver})

    // };

    return Scaffold(
        appBar: AppBar(
          title: Text(mydata),
        ),
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
                  return Row(children: [
                    // Text(mydata),
                    Column(
                      children: [Text(result.data['posts'])],
                    ),
                    Column(
                      children: [Text(result.data['posts'])],
                    )
                  ]);
                })));
  }
}

// class GetInfo extends StatefulWidget {
//   final List jsondata;

//   GetInfo({Key key, this.jsondata}) : super(key: key);
//   @override
//   _GetInfoState createState() => _GetInfoState();
// }

// class _GetInfoState extends State<GetInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(),
//     );
//   }
// }
