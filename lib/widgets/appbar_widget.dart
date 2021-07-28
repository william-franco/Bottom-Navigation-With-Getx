import 'package:flutter/material.dart';

// appbar that show title
AppBar appBarWithTitle(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    centerTitle: false,
    toolbarHeight: 110,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: false,
      titlePadding: EdgeInsets.all(19.0),
      title: Text(
        title,
        style: TextStyle(fontSize: 26.0),
      ),
    ),
  );
}
