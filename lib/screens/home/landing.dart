// DO NOT DELETE SHALL BE USED LATER!

// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';

// class Graphi extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final HttpLink httpLink =
//         HttpLink(uri: "https://v3.beerbiceps.com/graphql");
//     final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
//       GraphQLClient(
//         // ignore: unnecessary_cast
//         link: httpLink as Link,
//         cache: OptimisticCache(
//           dataIdFromObject: typenameDataIdFromObject,
//         ),
//       ),
//     );
//     return GraphQLProvider(
//       child: HomePage(),
//       client: client,
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final String query = r"""
//                     query PostsFetcg($code : String!){
//                       continent(code:$code){
//                         name
//                         posts{
//                            __typename
// id
// title
// is_completed
//                         }
//                       }
//                     }
//                   """;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("GraphlQL Client"),
//       ),
//       body: Query(
//         options: QueryOptions(
//             // ignore: deprecated_member_use
//             document: query,
//             variables: <String, dynamic>{"code": "AS"}),
//         builder: (
//           QueryResult result, {
//           VoidCallback refetch,
//         }) {
//           if (result.loading) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (result.data == null) {
//             return Text("No Data Found !");
//           }
//           return ListView.builder(
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 title:
//                     Text(result.data['continent']['countries'][index]['name']),
//               );
//             },
//             itemCount: result.data['continent']['countries'].length,
//           );
//         },
//       ),
//     );
//   }
// }
