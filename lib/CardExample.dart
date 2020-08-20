import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 200,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              elevation: 10,
              child: Text('This is the sample example', style: TextStyle(
                fontSize: 14.0
              )),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Card view Example',
          style: TextStyle(color: Colors.tealAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
