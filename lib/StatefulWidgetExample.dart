import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatefulWidgetExample();
}

class _StatefulWidgetExample extends State<StatefulExample> {
  int countLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Example'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count Value',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 10),
            Text(
              '$countLevel',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
