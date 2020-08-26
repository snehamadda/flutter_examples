import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tab bar Example',
          style: TextStyle(color: Colors.redAccent),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.business), text: 'Business'),
                Tab(icon: Icon(Icons.add_shopping_cart), text: 'Shopping Cart'),
              ],
            ),
            title: Text('Tab Bar Demo'),
          ),
          body: TabBarView(
            children: [
              Text('Home'),
              Text('Business'),
              Text('Shopping Cart'),
            ],
          ),
        ),
      ),
    );
  }
}
