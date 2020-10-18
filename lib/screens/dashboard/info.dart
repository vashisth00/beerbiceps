import 'package:flutter/material.dart';

class FullData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String mydata = ModalRoute.of(context).settings.arguments;
    //final String ee = mydata.startsWith('authorId', 1) as String;
    //final alljson = jsonDecode(mydata);

    // Map<String, dynamic> toJson() => {
    //   dynamic jsonDecode(String source, {Object Function(Object, Object) reviver})

    // };

    return Scaffold(
      appBar: AppBar(
        title: Text(mydata),
      ),
      body: Container(
        child: Text(mydata),
      ),
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
