import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/GesturePage.dart';
import 'package:flutter_demo/RouterPage.dart';
import 'package:flutter_demo/animation/AnimatePage.dart';
import 'package:flutter_demo/transfer/transfer_page.dart';
import './page1.dart';
import 'CustomUIPage.dart';

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
  // @override
  // Widget build(BuildContext context) => MaterialApp(
  //       theme: ThemeData(primaryColor: Colors.lightBlue[800]),
  //       home: const ListViewPage(
  //         title: "Custom UI",
  //       ),
  //     );

  // Custom UI
  // @override
  // Widget build(BuildContext context) => MaterialApp(
  //   theme: ThemeData(primaryColor: Colors.lightBlue[800]),
  //   home: CustomUIPage(title: "Custom UI"),
  // );
  // @override
  // Widget build(BuildContext context) => MaterialApp(
  //       theme: defaultTargetPlatform == TargetPlatform.iOS
  //           ? kIOSTheme
  //           : kAndroidTheme,
  //       home: CustomUIPage(title: "Custom UI"),
  //     );

  // @override
  // Widget build(BuildContext context) => MaterialApp(
  //       theme: defaultTargetPlatform == TargetPlatform.iOS
  //           ? kIOSTheme
  //           : kAndroidTheme,
  //       home: TransferPage(title: "数据传递"),
  //     );

  //  Widget build(BuildContext context) {
  //   return  MaterialApp(
  //     title: 'Navigation',
  //     //路由表
  //     routes:{
  //       "second_page":(context)=>SecondPage(),
  //       "third_page":(context)=>ThirdPage()
  //     },
  //     //路由异常页面
  //     onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknownPage()),
  //     home:  FirstPage(),
  //   );

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  AnimatePage(title: "animate"),
    );
  
  }
}

final ThemeData kIOSTheme = ThemeData(
    brightness: Brightness.light, //亮色主题
    accentColor: Colors.white, //(按钮)Widget前景色为白色
    primaryColor: Colors.blue, //主题色为蓝色
    iconTheme: IconThemeData(color: Colors.grey), //icon主题为灰色
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)) //文本主题为黑色
    );

// Android深色主题
final ThemeData kAndroidTheme = ThemeData(
    brightness: Brightness.dark, //深色主题
    accentColor: Colors.black, //(按钮)Widget前景色为黑色
    primaryColor: Colors.cyan, //主题色Wie青色
    iconTheme: IconThemeData(color: Colors.blue), //icon主题色为蓝色
    textTheme: TextTheme(bodyText1: TextStyle(color: Colors.red)) //文本主题色为红色
    );
