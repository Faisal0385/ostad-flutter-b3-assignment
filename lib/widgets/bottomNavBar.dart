import 'package:flutter/material.dart';
import 'package:ostad_flutter_assignments/pages/page_one.dart';
import 'package:ostad_flutter_assignments/pages/page_three.dart';
import 'package:ostad_flutter_assignments/pages/page_two.dart';

Widget BottomNavBar(context, currentIndex) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    elevation: 5,
    items: [
      BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PageOne()));
            },
          ),
          label: "Page One"),
      BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PageTwo()));
            },
          ),
          label: "Page Two"),
      BottomNavigationBarItem(
          icon: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PageThree()));
            },
          ),
          label: "Page Three"),
    ],
  );
}
