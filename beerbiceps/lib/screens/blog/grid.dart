import 'package:beerbiceps/screens/dashboard/return.dart';
import 'package:flutter/material.dart';

class bbGrid extends StatelessWidget {
  const bbGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF3D657),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this would produce 2 rows.
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        // Generate 100 Widgets that display their index in the List
        children: List.generate(100, (index) {
          return Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoutesExample()));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 3.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
