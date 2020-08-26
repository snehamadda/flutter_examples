import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/models/Chat.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(
            height: 10,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor:  Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                data[index].avatarUrl
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  data[index].name, style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(data[index].time, style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                data[index].message,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          )
        ],
      )
    );
  }
}
