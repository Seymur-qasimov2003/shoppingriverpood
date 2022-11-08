import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'Shopping App',
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    backgroundColor: Colors.green,
    elevation: 0,
  );
}
