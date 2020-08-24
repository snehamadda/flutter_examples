// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_flutter_app/BottomNavigation.dart';
import 'package:my_flutter_app/DrawerExample.dart';
import 'package:my_flutter_app/LoginScreen.dart';

import 'HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Samples',
      theme: ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.deepPurple,
      ),
      routes: {
        '/LoginScreen' : (context) => LoginScreen(),
        '/BottomNavigation' : (context) => BottomNavigation(),
        '/DrawerScreen' : (context) => DrawerExample(),
      },
      home: HomeScreen(),
    );
  }
}
