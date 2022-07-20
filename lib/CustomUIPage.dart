import 'dart:math';

import 'package:flutter/material.dart';

class CustomUIPage extends StatefulWidget {
  const CustomUIPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CustomUIPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError("");
  }
}

class UpdatedItemWidget extends StatelessWidget {
  final UpdatedItemModel model;
  final VoidCallback onPressed;

  const UpdatedItemWidget(
      {Key? key, required this.model, required this.onPressed})
      : super(key: key);
      
}

class UpdatedItemModel {
  String appIcon;
  String appName;
  String appSize;
  String appDate;
  String appDescription;
  String appVersion;
  UpdatedItemModel(
      {required this.appIcon,
      required this.appName,
      required this.appSize,
      required this.appDate,
      required this.appDescription,
      required this.appVersion});
}

class Cake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200, 200),
      painter: WheelPainter(),
    );
  }
}

class WheelPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //饼图尺寸
    double wheelSize = min(size.width, size.height) / 2;
    double nbElem = 6;
    double radius = (2 * pi) / nbElem;
    Rect boundingRect = Rect.fromCircle(
        center: Offset(wheelSize, wheelSize), radius: wheelSize);

    //画圆弧，每次1/6个圆弧
    canvas.drawArc(
        boundingRect, 0, radius, true, getColoredPaint(Colors.orange));
    canvas.drawArc(
        boundingRect, radius, radius, true, getColoredPaint(Colors.black38));
    canvas.drawArc(
        boundingRect, radius * 2, radius, true, getColoredPaint(Colors.green));
    canvas.drawArc(
        boundingRect, radius * 3, radius, true, getColoredPaint(Colors.red));
    canvas.drawArc(
        boundingRect, radius * 4, radius, true, getColoredPaint(Colors.blue));
    canvas.drawArc(
        boundingRect, radius * 5, radius, true, getColoredPaint(Colors.pink));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;

  Paint getColoredPaint(Color color) {
    Paint paint = Paint();
    paint.color = color;
    return paint;
  }
}
