import 'package:flutter/material.dart';

class CustomUIPage extends StatefulWidget {
  const CustomUIPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<CustomUIPage> with
    SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
