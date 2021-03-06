import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/Data/globals.dart' as globals;
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventTemplatePage.dart';

class UpcomingEvents extends StatefulWidget {
  @override
  _UpcomingEventsState createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 25.0,
              left: 10.0,
              right: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Upcoming Events",
                  style: kHeaderTextStyle,
                ),
              ],
            ),
          ),
          Container(
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: globals.Events.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EventCard(
                    eventName: globals.Events[index].eventName,
                    eventNotes: globals.Events[index].eventNotes,
                    eventDate: globals.Events[index].eventDate,
                    eventTime: globals.Events[index].eventTime,
                    categoryIcon: globals.Events[index].categoryIcon,
                    categoryColor: globals.Events[index].categoryColor,
                    //setup subpage here
                    // paragraph: globals.Events[index].paragraph,
                    // stepsA: globals.Events[index].steps,
                    // videoKey: globals.Events[index].video,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
