import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class TrendingPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10),
          child: Text(
            'Trending Posts',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 15.0),
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.yourstory.com/cs/7/1da9ec3014cc11e9a1b2b928167b6c62/ranveerallahbadiabanner1572524375907png?fm=png&auto=format&ar=2:1&mode=crop&crop=face'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Usable Flower for Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text use for printing and type script',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.yourstory.com/cs/7/1da9ec3014cc11e9a1b2b928167b6c62/ranveerallahbadiabanner1572524375907png?fm=png&auto=format&ar=2:1&mode=crop&crop=face'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Usable Flower for Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text use for printing and type script',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.yourstory.com/cs/7/1da9ec3014cc11e9a1b2b928167b6c62/ranveerallahbadiabanner1572524375907png?fm=png&auto=format&ar=2:1&mode=crop&crop=faceg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Usable Flower for Health',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text use for printing and type script',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
