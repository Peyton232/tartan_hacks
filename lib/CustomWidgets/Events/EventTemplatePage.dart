import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class EventTemplatePage extends StatefulWidget {
  final String eventName;
  final String eventNotes;
  final String eventDate;
  final String eventTime;
  final IconData categoryIcon;
  final Color categoryColor;

  EventTemplatePage({
    @required this.eventName,
    @required this.eventNotes,
    @required this.eventDate,
    @required this.eventTime,
    @required this.categoryIcon,
    @required this.categoryColor,
  });

  @override
  _EventTemplatePageState createState() => _EventTemplatePageState();
}

class _EventTemplatePageState extends State<EventTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.eventName),
      ),
      body: Column(
        children: <Widget>[
          Text(widget.eventNotes),
          Text(widget.eventDate),
          Text(widget.eventTime),
        ],
      ),
    );
  }
}
