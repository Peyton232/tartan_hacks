import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderTemplatePage.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';

class UpcomingReminders extends StatefulWidget {
  @override
  _UpcomingRemindersState createState() => _UpcomingRemindersState();
}

class _UpcomingRemindersState extends State<UpcomingReminders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //TODO: Build cards from a list
                Text(
                  "Upcoming Reminders",
                  style: kHeaderTextStyle,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: ReminderCard(
                    reminderName: "Reminder Name",
                    reminderNotes: "Reminder Notes",
                    reminderDate: "March 5",
                    reminderTime: "10:00 PM",
                    categoryIcon: Icons.check_circle,
                    categoryColor: kRed,
                    buttonPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReminderTemplatePage(
                            reminderName: "(Certain reminder)",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: ReminderCard(
                    reminderName: "Reminder Name",
                    reminderNotes: "Reminder Notes",
                    reminderDate: "March 5",
                    reminderTime: "10:00 PM",
                    categoryIcon: Icons.check_circle,
                    categoryColor: kRed,
                    buttonPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReminderTemplatePage(
                            reminderName: "(Certain reminder)",
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: ReminderCard(
                    reminderName: "Reminder Name",
                    reminderNotes: "Reminder Notes",
                    reminderDate: "March 5",
                    reminderTime: "10:00 PM",
                    categoryIcon: Icons.check_circle,
                    categoryColor: kBlue,
                    buttonPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReminderTemplatePage(
                            reminderName: "(Certain reminder)",
                          ),
                        ),
                      );
                    },
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
