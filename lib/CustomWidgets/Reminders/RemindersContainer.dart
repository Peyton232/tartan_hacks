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
                    "Your Reminders",
                    style: kHeaderTextStyle,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(10, 30),
                  primary: Colors.deepPurple[300],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () => setState(() => globals.counter++),
                child: Icon(Icons.cached),
              ),
              SizedBox(
                width: 5.0,
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
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(10, 30),
                  primary: Colors.deepPurple[300],
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
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
                buttonPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              globals.Reminds[index].reminderName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              // padding: EdgeInsets.all(5.0),
                              // decoration: BoxDecoration(
                              //   shape: BoxShape.circle,
                              //   color: globals.Reminds[index].categoryColor,
                              // ),
                              child: Icon(
                                globals.Reminds[index].categoryIcon,
                                color: globals.Reminds[index].categoryColor,
                              ),
                            ),
                          ],
                        ),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text(
                                "Notes: ${globals.Reminds[index].reminderNotes}",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                "Time: ${globals.Reminds[index].reminderDate}, ${globals.Reminds[index].reminderTime}",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              // SizedBox(
                              //   height: 5.0,
                              // ),
                              // Text(
                              //   "Time: ${globals.Reminds[index].reminderTime}",
                              //   style: TextStyle(fontSize: 18.0),
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
