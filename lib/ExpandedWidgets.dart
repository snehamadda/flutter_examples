import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded widgets'),
        backgroundColor: Colors.tealAccent,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text('One'),
              padding: EdgeInsets.all(10.0),
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text('Two'),
              color: Colors.blue,
              padding: EdgeInsets.all(10.0),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text('Three'),
              color: Colors.blue,
              padding: EdgeInsets.all(10.0),
            ),
          ),
        ],
      ),
    );
  }
}
