import 'package:flutter/material.dart';

class DisplayImagesFromInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Displaying from Internet',
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png',
              height: 400,
              width: 250,
            ),
            Text(
              'Displaying image from Internet',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
