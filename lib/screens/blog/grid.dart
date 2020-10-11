import 'package:beerbiceps/constants/db.dart';
import 'package:beerbiceps/screens/elements/boards.dart';
import 'package:flutter/material.dart';

class BlogsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'BeerBiceps Blogs';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Boards(
            title: 'All Blogs',
            route: Database(),
          ),
          Boards(
            route: BlogsGrid(),
            title: 'Vashisth',
          ),
          Boards(
            title: 'Coming Soon',
            route: BlogsGrid(),
          ),
        ],
      ),
    );
  }
}
