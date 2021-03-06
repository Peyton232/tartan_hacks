import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class EventTemplatePage extends StatefulWidget {
  final String eventName;

  EventTemplatePage({
    @required this.eventName,
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
    );
  }
}
