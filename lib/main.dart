import 'package:flutter/material.dart';
import './page1.dart';
import 'ListViewPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // lifecycle demo
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       title: 'Flutter Demo',
  //       theme: ThemeData(
  //         primarySwatch: Colors.blue,
  //       ),
  //       home: Page1()
  //   );
  // }

  //ListView Demo
  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(primaryColor: Colors.lightBlue[800]),
        home: const ListViewPage(
          title: "Custom UI",
        ),
      );
}


