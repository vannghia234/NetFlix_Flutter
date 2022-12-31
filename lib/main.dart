import 'package:flutter/material.dart';
import 'package:netflix_clone_byflutter/pages/root_app.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 26
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: Colors.white, fontSize: 16)
      )
    ),
    debugShowCheckedModeBanner: false,
    home: const RootApp(),
  ));
}

