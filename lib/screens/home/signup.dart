import 'package:beerbiceps/screens/blog/grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Just Go Visit",
          style: TextStyle(
            fontSize: 16,
            color: Colors.amber,
            height: 2,
          ),
        ),
        Text(
          "BeerBiceps",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
            letterSpacing: 2,
            height: 1,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.amber.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BlogsGrid()),
              );
            },
            child: Center(
              child: Text(
                "View Blogs",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1C1C1C),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "Follow us on",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.amber,
            height: 1,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Entypo.facebook_with_circle,
              size: 32,
              color: Colors.amber,
            ),
            SizedBox(
              width: 24,
            ),
            Icon(
              Entypo.google__with_circle,
              size: 32,
              color: Colors.amber,
            ),
          ],
        )
      ],
    );
  }
}
