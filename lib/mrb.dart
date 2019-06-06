import 'package:flutter/material.dart';

class MrbLab extends StatefulWidget {
  MrbLab({Key key}) : super(key: key);

  _MrbLabState createState() => _MrbLabState();
}

class _MrbLabState extends State<MrbLab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.camera,
              size: 100,
            ),
            Text('MRB Lab',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text('Android & iOS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],),
      ),
    );
  }
}