import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/Animations.dart';

import 'BottomNavigation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State <LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'UserName')),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password')),
            ),
            FlatButton(
              onPressed: () {
                //forgot password screen
              },
              textColor: Colors.lightBlue,
              child: Text('Forgot Password'),
            ),
            Container(
              height: 50,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.lightBlue,
                child: Text('Login'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => (AnimationOne())));
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Doesn't have an account?"),
                  FlatButton(
                    textColor: Colors.lightBlue,
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      //sign up Screen
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
