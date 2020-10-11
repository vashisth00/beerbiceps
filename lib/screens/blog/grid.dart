import 'package:beerbiceps/screens/dashboard/list.dart';
import 'package:beerbiceps/screens/dashboard/posts.dart';
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
      body: Column(
        children: [
          Column(
            children: [TrendingPosts()],
          ),
          Column(
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Boards(
                      title: 'All Blogs',
                      route: BlogList(),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
