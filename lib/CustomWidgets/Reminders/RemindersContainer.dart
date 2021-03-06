import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderTemplatePage.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';
import 'package:tartan_hacks/Data/globals.dart' as globals;

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
                  child: ReminderCard(
                    reminderName: globals.Reminds[index].reminderName,
                    reminderNotes: globals.Reminds[index].reminderNotes,
                    reminderDate: globals.Reminds[index].reminderDate,
                    reminderTime: globals.Reminds[index].reminderTime,
                    categoryIcon: globals.Reminds[index].categoryIcon,
                    categoryColor: globals.Reminds[index].categoryColor,
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
