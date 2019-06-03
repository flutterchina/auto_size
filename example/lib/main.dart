import 'package:flutter/material.dart';

import 'package:auto_size/auto_size.dart';

void main() => runAutoSizeApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
//    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
//    Size size = MediaQuery.of(context).size;
//    print("thll  MediaQuery devicePixelRatio: $devicePixelRatio, size: ${size.toString()}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoSize example app'),
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                height: 50,
                width: 180,
                color: Colors.deepOrangeAccent,
                child: new FlatButton(
                    onPressed: () {
                      print(
                          "thll  MediaQuery: ${MediaQuery.of(context).size.toString()}");
                    },
                    child: new Text("180dp")),
              ),
              new Container(
                height: 50,
                width: 180,
                color: Colors.deepPurpleAccent,
                child: new FlatButton(
                    onPressed: () {
                      print(
                          "thll  MediaQuery: ${MediaQuery.of(context).size.toString()}");
                    },
                    child: new Text("180dp")),
              ),
            ],
          ),
          new Expanded(
              child: new GestureDetector(
            onVerticalDragDown: (DragDownDetails details) {
              print(
                  "thll onVerticalDragDown: ${details.globalPosition.toString()}");
            },
            onVerticalDragUpdate: (DragUpdateDetails details) {
              print(
                  "thll  onVerticalDragUpdate: ${details.globalPosition.toString()}");
            },
            child: new ListView.builder(
                itemCount: 100,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    height: 50,
                    child: new Center(
                      child: new Text("$index"),
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 0.33, color: Color(0xffe5e5e5)))),
                  );
                }),
          ))
        ],
      ),
    );
  }
}
