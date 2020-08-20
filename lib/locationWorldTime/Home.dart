import 'package:flutter/material.dart';
import 'package:my_flutter_app/locationWorldTime/ChooseLocation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton.icon(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/location');
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ChooseLocation()));
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'))
            ],
          ),
        ));
  }
}
