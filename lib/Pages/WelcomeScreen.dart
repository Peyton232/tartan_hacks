import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoriesContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventsContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/RemindersContainer.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';
import '../database/database.dart';
import 'AddEventPage.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Navigator.pushNamed(context, "/CalendarScreen");
        },
        child: Icon(Icons.calendar_today),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: kDarkPurple,
              ),
              height: 400,
              child: Center(
                child: Text("Plasma Looking Background and robot man"),
              ),
            ),
            Container(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: UpcomingEvents(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: UpcomingReminders(),
            ),
            CategoriesContainer(),
            ElevatedButton(
              onPressed: () => {
                //sendData("example data 2 electric boogaloo"),
                readData(),
              },
              child: Text("Read database"),
            ),
          ],
        ),
      ),
    );
  }
}
