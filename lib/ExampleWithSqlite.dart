import 'package:flutter/material.dart';
import 'package:my_flutter_app/DatabaseHelper.dart';
import 'package:my_flutter_app/models/User.dart';

class SqLiteExample extends StatefulWidget {
  @override
  _SqLiteExampleState createState() => _SqLiteExampleState();
}

class _SqLiteExampleState extends State<SqLiteExample> {
  final dbHelper = DatabaseHelper.instance;
  List<User> users = [];
  List<User> usersByName = [];

  //used in insert
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  //used in update
  TextEditingController idUpdateController = TextEditingController();
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController ageUpdateController = TextEditingController();

  //used in delete
  TextEditingController idDeleteController = TextEditingController();

  //used in query
  TextEditingController queryController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffolfdKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    _scaffolfdKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffolfdKey,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Insert",
              ),
              Tab(
                text: "View",
              ),
              Tab(
                text: "Query",
              ),
              Tab(
                text: "Update",
              ),
              Tab(
                text: "Delete",
              ),
            ],
          ),
          title: Text('SQLite Example'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: ageController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Age',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Insert User Details'),
                    onPressed: () {
                      String name = nameController.text;
                      int age = int.parse(ageController.text);
                      _insert(name, age);
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: users.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == users.length) {
                    return RaisedButton(
                      child: Text('Refresh'),
                      onPressed: () {
                        setState(() {
                          _queryAll();
                        });
                      },
                    );
                  }
                  return Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        '[${users[index].id}] ${users[index].name} - ${users[index].age} age',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: queryController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                      onChanged: (text) {
                        if (text.length >= 2) {
                          setState(() {
                            _query(text);
                          });
                        } else {
                          setState(() {
                            usersByName.clear();
                          });
                        }
                      },
                    ),
                    height: 100,
                  ),
                  Container(
                    height: 300,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: usersByName.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          child: Center(
                            child: Text(
                              '[${usersByName[index].id}] ${usersByName[index].name} - ${usersByName[index].age} age',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idUpdateController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'User Id'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameUpdateController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'User Name'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: ageUpdateController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'User Age'),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Update User Details'),
                    onPressed: () {
                      int id = int.parse(idUpdateController.text);
                      String name = nameUpdateController.text;
                      int age = int.parse(ageUpdateController.text);
                      _update(id, name, age);
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: idDeleteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User id',
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Text('Delete'),
                    onPressed: () {
                      int id = int.parse(idDeleteController.text);
                      _delete(id);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _insert(String name, int age) async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnAge: age,
    };
    User user = User.fromMap(row);
    final id = await dbHelper.insert(user);
    _showMessageInScaffold('inserted row id: $id');
  }

  void _queryAll() async {
    final allRows = await dbHelper.queryAllRows();
    users.clear();
    allRows.forEach((row) => users.add(User.fromMap(row)));
    _showMessageInScaffold('Query done.');
    setState(() {});
  }

  void _query(name) async {
    final allRows = await dbHelper.queryRows(name);
    users.clear();
    allRows.forEach((row) => usersByName.add(User.fromMap(row)));
  }

  void _update(id, name, age) async {
    // row to update
    User user = User(id, name, age);
    final rowsAffected = await dbHelper.update(user);
    _showMessageInScaffold('updated $rowsAffected row(s)');
  }

  void _delete(id) async {
    // Assuming that the number of rows is the id for the last row.
    final rowsDeleted = await dbHelper.delete(id);
    _showMessageInScaffold('deleted $rowsDeleted row(s): row $id');
  }
}
