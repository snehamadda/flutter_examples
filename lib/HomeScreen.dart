import 'package:flutter/material.dart';
import 'package:my_flutter_app/ColumnLayout.dart';
import 'package:my_flutter_app/ExpandedWidgets.dart';
import 'package:my_flutter_app/GestureAlertDialogExample.dart';
import 'package:my_flutter_app/IdCardExample.dart';
import 'package:my_flutter_app/ListOfDataExample.dart';
import 'package:my_flutter_app/MarginToText.dart';
import 'package:my_flutter_app/RandomWords.dart';
import 'package:my_flutter_app/RowLayout.dart';
import 'package:my_flutter_app/SplashScreen.dart';
import 'package:my_flutter_app/StatefulWidgetExample.dart';

import 'BottomNavigation.dart';
import 'ButtonTest.dart';
import 'ExampleWithSqlite.dart';
import 'FormValidationExample.dart';
import 'ListViewWithJson.dart';
import 'TabBarExample.dart';
import 'ToastExample.dart';
import 'WhatsApp.dart';
import 'locationWorldTime/Home.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Examples of Flutter Samples'),
          centerTitle: true,
        ),
        body: getListOfExamples(context));
  }

  Widget getListOfExamples(BuildContext context) {
    var listView = ListView(
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        RaisedButton(
          child: Text('Row Example'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => RowLayout()));
          },
        ),
        RaisedButton(
          child: Text('Column Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ColumnLayout()));
          },
        ),
        RaisedButton(
          child: Text('Margin to text Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MarginToText()));
          },
        ),
        RaisedButton(
          child: Text('Stateful Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StatefulExample()));
          },
        ),
        RaisedButton(
          child: Text('Id Card Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => IdCardExample()));
          },
        ),
        RaisedButton(
          child: Text('List of data Example'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ListOfData()));
          },
        ),
        RaisedButton(
          child: Text('Random words Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RandomWords()));
          },
        ),
        RaisedButton(
          child: Text('Expanded widget Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ExpandedWidgets()));
          },
        ),
        RaisedButton(
          child: Text('Without app bar Example'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        RaisedButton(
          child: Text('Button Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ButtonExample()));
          },
        ),
        RaisedButton(
          child: Text('Toast Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ToastExample()));
          },
        ),
        RaisedButton(
          child: Text('TabBar Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TabBarExample()));
          },
        ),
        RaisedButton(
          child: Text('ListViewWithJson Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ListViewWithJson()));
          },
        ),
        RaisedButton(
          child: Text('Gesture Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GestureExample()));
          },
        ),
        RaisedButton(
          child: Text('BottomNavigation Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomNavigation()));
          },
        ),
        RaisedButton(
          child: Text('App Example'),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SplashScreen()));
          },
        ),
        RaisedButton(
          child: Text('WhatsApp Example'),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WhatsApp()));
          },
        ),
        RaisedButton(
          child: Text('SQLite Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SqLiteExample()));
          },
        ),
        RaisedButton(
          child: Text('Forms Example'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FormsExample()));
          },
        ),
      ],
    );
    return listView;
  }
}
