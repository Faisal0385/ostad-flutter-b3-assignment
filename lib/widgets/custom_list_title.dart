import 'package:flutter/material.dart';

Widget customerListTile(context, listIcon, listText, route) {
  return ListTile(
    leading: listIcon,
    title: Text(listText),
    onTap: () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => route));
    },
  );
}
