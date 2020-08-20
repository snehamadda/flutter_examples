import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      // how to add button with Icon
      body: Center(
        child: RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.account_box),
          label: Text('Choose Account Box'),
          color: Colors.blueAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
