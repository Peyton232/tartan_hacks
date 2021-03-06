import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoriesContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventsContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/RemindersContainer.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';
import '../database/database.dart';

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
          print("Go to calendar");
        },
        child: Icon(Icons.calendar_today),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: kPurple,
              ),
              height: 400,
              child: Center(
                child: Text("Plasma Looking Background"),
              ),
            ),
            UpcomingEvents(),
            UpcomingReminders(),
            CategoriesContainer(),
            ElevatedButton(
              onPressed: () => {
                //sendData("example data 2 electric boogaloo"),
                 readData(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
