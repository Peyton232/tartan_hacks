import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderTemplatePage.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';
import 'package:tartan_hacks/Data/globals.dart' as globals;
import 'package:stacked/stacked.dart';
import 'package:tartan_hacks/Pages/AddReminderPage.dart';

class UpcomingReminders extends StatefulWidget {
  @override
  _UpcomingRemindersState createState() => _UpcomingRemindersState();
}

class _UpcomingRemindersState extends State<UpcomingReminders> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text(
                    "Upcoming Reminders",
                    style: kHeaderTextStyle,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddReminderPage(),
                    ),
                  );
                },
                child: Icon(Icons.add),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(
                      10,
                      30,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.deepPurple[300],
                  ),
                  elevation: MaterialStateProperty.all(4.0),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.grey[300]),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: globals.Reminds.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: 20.0,
              ),
              child: ReminderCard(
                reminderName: globals.Reminds[index].reminderName,
                reminderNotes: globals.Reminds[index].reminderNotes,
                reminderDate: globals.Reminds[index].reminderDate,
                reminderTime: globals.Reminds[index].reminderTime,
                categoryIcon: globals.Reminds[index].categoryIcon,
                categoryColor: globals.Reminds[index].categoryColor,
              ),
            );
          },
        ),
        ElevatedButton(
            onPressed: () => setState(() => globals.counter++),
            child: Text("refresh")),
      ],
    );
  }
}
