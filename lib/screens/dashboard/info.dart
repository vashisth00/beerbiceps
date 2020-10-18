import 'package:flutter/material.dart';

class FullData extends StatelessWidget {
  final FullData todo;

  // In the constructor, require a Todo.
  FullData({Key key, @required this.todo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String mydata = ModalRoute.of(context).settings.arguments.toString();
    print(todo);
    return Scaffold(
      appBar: AppBar(
        title: Text("Variable"),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(mydata),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(todo.toString()),
        ),
      ]),
    );
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
