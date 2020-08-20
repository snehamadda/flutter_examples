import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowLayout extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row layout Example'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Hello'),
          FlatButton(
            onPressed: () {
            },
            color: Colors.blueAccent,
            child: Text('Click me', textAlign: TextAlign.center),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(20.0),
            child: Text('Container text'),
          )
        ],
      ),
    );
  }

}