import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Layout Example'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text('Hello'),
              Text('Welcome')
            ],
          ),
          Container(
            child: Text('One'),
            padding: EdgeInsets.all(10.0),
            color: Colors.tealAccent,
          ),
          Container(
            child: Text('Two'),
            padding: EdgeInsets.all(10.0),
            color: Colors.tealAccent,
          ),
          Container(
            child: Text('Three'),
            padding: EdgeInsets.all(10.0),
            color: Colors.tealAccent,
          ),
        ],
      ),
    );
  }

}