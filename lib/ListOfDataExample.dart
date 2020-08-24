import 'package:flutter/material.dart';
import 'models/DataList.dart';

class ListOfData extends StatefulWidget {
  @override
  _ListOfDataState createState() => _ListOfDataState();
}

class _ListOfDataState extends State<ListOfData> {

  List<DataList> listOfData = [
    DataList(author: 'name', text: 'This is the sample text'),
    DataList(author: 'name', text: 'This is the sample text'),
    DataList(author: 'name', text: 'This is the sample text'),
    DataList(author: 'name', text: 'This is the sample text'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Displaying list of data'),
    backgroundColor: Colors.red,
    centerTitle: true,
    ),
    body: Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: listOfData.map((list) => Text('${list.text} - ${list.author}')).toList(),
    ),
    ),
    );
    }
}
