import 'package:flutter/material.dart';

import 'package:example_moor_flutter/src/modules/main/components/HomeWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moor Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.blueGrey[600],
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey[800],
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.cyan[200],
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blueGrey[600],
        ),
        primaryIconTheme: IconThemeData(color: Colors.cyan[200]),
        fontFamily: 'Georgia',
      ),
      home: HomeWidget(),
    );
  }
}
