import 'package:flutter/material.dart';

class FormsExample extends StatefulWidget {
  @override
  _FormsExampleState createState() => _FormsExampleState();
}

class _FormsExampleState extends State<FormsExample> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Example'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter Phone Number',
                  labelText: 'Phone Number'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter Phone Number';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.mail),
                  hintText: 'Enter EmailId',
                  labelText: 'Enter mail Id'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter mail id';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter Name',
                  labelText: 'Enter your name'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter name';
                }
                return null;
              },
            ),
            new Container(
              padding: EdgeInsets.only(left: 150, top: 50),
              child: RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Data is in Processing'),
                    ));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
