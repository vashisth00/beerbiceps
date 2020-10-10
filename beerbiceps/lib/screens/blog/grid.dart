import 'package:beerbiceps/screens/dashboard/list.dart';
import 'package:flutter/material.dart';

class BlogsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'BeerBiceps Blogs';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        bottomOpacity: 0.2,
        toolbarOpacity: 0.4,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BlogList()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Check Basic Blogs"),
              color: Colors.teal[100],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
    );
  }
}
