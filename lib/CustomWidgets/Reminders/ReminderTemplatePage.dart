import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class ReminderTemplatePage extends StatefulWidget {
  final String reminderName;

  ReminderTemplatePage({
    @required this.reminderName,
  });

  @override
  _ReminderTemplatePageState createState() => _ReminderTemplatePageState();
}

class _ReminderTemplatePageState extends State<ReminderTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.reminderName),
      ),
    );
  }
}
