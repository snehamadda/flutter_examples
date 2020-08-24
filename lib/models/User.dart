import 'package:my_flutter_app/DatabaseHelper.dart';

class User {
  int id;
  String name;
  int age;

  User(this.id, this.name, this.age);

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    age = map['age'];
  }

  Map<String, dynamic> toMap() {
    return {
    DatabaseHelper.columnId: id,
    DatabaseHelper.columnName: name,
    DatabaseHelper.columnAge: age,
  };
  }
}