import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //int _left, _right = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: MyBody(),
    ));
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  var _left = 1, _right = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      _left = Random().nextInt(5) + 1;
                      print('AppBrew left state update $_left');
                    });
                  },
                  child: Image.asset('images/dice$_left.png'))),
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      _right = Random().nextInt(5) + 1;
                      print('AppBrew right state update $_right');
                    });
                  },
                  child: Image.asset('images/dice$_right.png')))
        ],
      ),
    );
  }
}
