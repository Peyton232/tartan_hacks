import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/EventCard.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: kPurple,
            height: 400,
            child: Center(
              child: Text("Plasma Looking Background"),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
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
          ),
          Container(
            child: Text(
              "Upcoming Reminders",
              style: kHeaderTextStyle,
            ),
          ),
          Container(
            child: Text(
              "Categories",
              style: kHeaderTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
