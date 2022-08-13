import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GuesturePage extends StatelessWidget {
  final String title;
  GuesturePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ListenerWidget(),
            DragWidget(),
            DoubleGestureWidget(),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "指针事件",
            ),
            Tab(
              icon: Icon(Icons.rss_feed),
              text: "手势",
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
              text: "手势冲突",
            )
          ],
          unselectedLabelColor: Colors.blueGrey,
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.red,
        ),
      ),
    );
  }
}

class ListenerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Listener(
        child: Container(
          color: Colors.red,
          width: 300,
          height: 300,
        ),
        onPointerDown: (event) => print("down $event"),
        onPointerMove: (event) => print("move $event"),
        onPointerUp: (event) => print("up $event"),
      ),
    );
  }
}

class DragWidget extends StatefulWidget {
  @override
  _DragState createState() => new _DragState();
}

class _DragState extends State<DragWidget> {
  double _top = 0.0; // top offset
  double _left = 0.0; // left offset

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("demo")),
      body: Stack(
        children: <Widget>[
          Positioned(
              top: _top,
              left: _left,
              child: GestureDetector(
                child: Container(color: Colors.red, width: 50, height: 50),
                onTap: () => print("Tap"),
                onDoubleTap: () => print("Double tap"),
                onLongPress: () => print("Long press"),
                onPanUpdate: (e) {
                  setState(() {
                    _left += e.delta.dx;
                    _top += e.delta.dy;
                  });
                },
              ))
        ],
      ),
    );
  }
}

class DoubleGestureWidget extends StatelessWidget {
  const DoubleGestureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawGestureDetector(
        gestures: {
          MultipleTapGestureRecognizer: GestureRecognizerFactoryWithHandlers<
              MultipleTapGestureRecognizer>(
            () => MultipleTapGestureRecognizer(),
            (MultipleTapGestureRecognizer instance) {
              instance.onTap = () => print('parent tapped ');
            },
          )
        },
        child: Container(
          color: Colors.pinkAccent,
          child: GestureDetector(
            onTap: () => print('Child tapped'),
            child: Container(
              color: Colors.blueAccent,
              width: 200.0,
              height: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}

class MultipleTapGestureRecognizer extends TapGestureRecognizer {
  @override
  void rejectGesture(int pointer) {
    acceptGesture(pointer);
  }
}
