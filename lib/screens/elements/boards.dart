import 'package:flutter/material.dart';

class Boards extends StatelessWidget {
  final String title;
  final Widget route;

  const Boards({Key key, @required this.title, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text(title),
      ),
    );
  }
}
