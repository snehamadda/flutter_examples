import 'package:flutter/material.dart';

class MarginToText extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example of Margin and Padding'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.only(left: 20, right: 20),
        color: Colors.blueGrey,
        child: Text('Welcome to Flutter Sample'),
      ),
    );
  }
}
