import 'package:flutter/material.dart';
import 'package:my_flutter_app/DisplayingImagesFromInternet.dart';

class AnimationOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation One'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click me'),
          onPressed: () {
            Navigator.of(context).push(_createAnimation());
          },
        ),
      ),
    );
  }

  Route _createAnimation() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => AnimationTwo(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        });
  }
}

class AnimationTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationTwo'),
      ),
      body: Center(
          child: RaisedButton(
            padding: EdgeInsets.all(20),
        child: Text('Welcome, Do you want to display image from internet'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => (DisplayImagesFromInternet())));
        },
      )),
    );
  }
}
