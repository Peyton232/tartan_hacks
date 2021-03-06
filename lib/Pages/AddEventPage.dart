import 'package:flutter/material.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Event"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[],
      ),
    );
  }
}
