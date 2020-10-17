import 'package:flutter/material.dart';

class FullData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String mydata = ModalRoute.of(context).settings.arguments;

    return Container(
      child: Text(mydata),
    );
  }
}
