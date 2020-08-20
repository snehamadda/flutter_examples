import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IdCardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Id Card Example'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/paint_trust.png'),
                radius: 50,
              ),
            ),
            Divider(
              height: 100.0,
                color: Colors.grey,
            ),
            Text('Name',
                style: TextStyle(
                    color: Colors.red, letterSpacing: 2.0, fontSize: 20.0)),
            SizedBox(height: 10.0),
            Text('Email Id',
                style: TextStyle(
                    color: Colors.red, letterSpacing: 2.0, fontSize: 20.0)),
            SizedBox(height: 10.0),
            Row(
              children: [
                Text(
                  'phone Number',
                  style: TextStyle(
                    color: Colors.red,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
