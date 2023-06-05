import 'package:flutter/material.dart';

Widget TabWidget(context, tabText ,tabIcon, route) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => route));
    },
    child: Tab(
        text: tabText,
        icon: tabIcon,
    ),
  );
}