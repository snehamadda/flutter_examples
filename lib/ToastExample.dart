import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastExample extends StatefulWidget {
  @override
  _ToastExampleState createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 30),
        child: Center(
          child: RaisedButton(
            child: Text('click to show toast message'),
            onPressed: () {
              Toast.show("Toast Message", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
          ),
        ),
      ),
    );
  }
}
