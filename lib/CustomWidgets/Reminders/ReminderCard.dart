import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class ReminderCard extends StatefulWidget {
  final String reminderName;
  final String reminderNotes;
  final String reminderDate;
  final String reminderTime;
  final IconData categoryIcon;
  final Color categoryColor;
  final Function buttonPressed;

  ReminderCard({
    @required this.reminderName,
    @required this.reminderNotes,
    @required this.reminderDate,
    @required this.reminderTime,
    @required this.categoryIcon,
    @required this.categoryColor,
    this.buttonPressed,
  });

  @override
  _ReminderCardState createState() => _ReminderCardState();
}

class _ReminderCardState extends State<ReminderCard> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kOffWhite),
        elevation: MaterialStateProperty.all(4.0),
        overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]),
      ),
      onPressed: () {
        print("Top 3 upcoming reminders");
        widget.buttonPressed();
      },
      child: Container(
        width: 330,
        height: 60,
        child: Row(
          children: <Widget>[
            Container(
              height: kCardCircleDimensions,
              width: kCardCircleDimensions,
              decoration: BoxDecoration(
                color: widget.categoryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                widget.categoryIcon,
                size: 25.0,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.reminderName,
                      style: kEventTitleTextStyle,
                    ),
                    Text(
                      "Notes: ${widget.reminderNotes}",
                      style: kEventNotesTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.reminderDate,
                  style: kEventDateTextStyle,
                ),
                Text(
                  widget.reminderTime,
                  style: kEventDateTextStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
