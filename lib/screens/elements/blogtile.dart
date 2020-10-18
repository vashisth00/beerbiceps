import 'package:beerbiceps/models/getblogs.dart';
import 'package:flutter/material.dart';

class BlogHeader extends StatelessWidget {
  const BlogHeader({
    Key key,
    @required this.data,
  }) : super(key: key);

  final NodeElement data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(data.title ?? "Coming Soon"),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 2,
                    width: 50,
                    color: Colors.amber,
                  ),
                  Text(
                    data.author.node.firstName ?? "Ranveer",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
