import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class ReminderTemplatePage extends StatefulWidget {
  final String reminderName;
  final String reminderNotes;
  final String reminderDate;
  final String reminderTime;
  final IconData categoryIcon;
  final Color categoryColor;

  ReminderTemplatePage({
  @required this.reminderName,
  @required this.reminderNotes,
  @required this.reminderDate,
  @required this.reminderTime,
  @required this.categoryIcon,
  @required this.categoryColor,
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
