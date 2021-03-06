import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';

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
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: EventCard(
                    eventName: "Calendar Event Name",
                    eventNotes: "Calendar Notes",
                    eventDate: "March 5",
                    eventTime: "5:00 PM",
                    categoryIcon: Icons.home,
                    categoryColor: kRed,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: EventCard(
                    eventName: "Calendar Event Name",
                    eventNotes: "Calendar Notes",
                    eventDate: "March 6",
                    eventTime: "5:00 PM",
                    categoryIcon: Icons.directions_run,
                    categoryColor: kGreen,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: EventCard(
                    eventName: "Calendar Event Name",
                    eventNotes: "Calendar Notes",
                    eventDate: "March 7",
                    eventTime: "5:00 PM",
                    categoryIcon: Icons.description,
                    categoryColor: kBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
