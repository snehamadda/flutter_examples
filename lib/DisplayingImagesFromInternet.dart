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
      body: Image.network('https://picsum.photos/250?image=9'),
    );
  }
}
