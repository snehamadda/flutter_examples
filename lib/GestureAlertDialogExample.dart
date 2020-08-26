import 'package:flutter/material.dart';

class GestureExample extends StatefulWidget {
  @override
  _GestureExampleState createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Box Clicked');
          },
          child: Container(
            height: 50,
            width: 120,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: RaisedButton(
              child: Text('Click me'),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    var okButton = FlatButton(
      child: Text('Ok'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    //creating Alert Dialog
    var alertDialog = AlertDialog(
      title: Text('Alert Message'),
      content: Text('This is an example of alert dialog'),
      actions: [
        okButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
