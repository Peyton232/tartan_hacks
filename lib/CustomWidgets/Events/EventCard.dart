import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventTemplatePage.dart';
import 'package:tartan_hacks/Data/constants.dart';

class EventCard extends StatefulWidget {
  final String eventName;
  final String eventNotes;
  final String eventDate;
  final String eventTime;
  final IconData categoryIcon;
  final Color categoryColor;
  final Function buttonPressed;

  EventCard({
    @required this.eventName,
    @required this.eventNotes,
    @required this.eventDate,
    @required this.eventTime,
    @required this.categoryIcon,
    @required this.categoryColor,
    this.buttonPressed,
  });

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kOffWhite),
        elevation: MaterialStateProperty.all(4.0),
        overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventTemplatePage(
              //Navigate to subpage
              eventName: widget.eventName,
              eventNotes: widget.eventNotes,
              eventDate: widget.eventDate,
              eventTime: widget.eventTime,
              categoryIcon: widget.categoryIcon,
              categoryColor: widget.categoryColor,
            ),
          ),
        );
        //widget.buttonPressed();
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
                      widget.eventName,
                      style: kEventTitleTextStyle,
                    ),
                    Text(
                      "Notes: ${widget.eventNotes}",
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
                  widget.eventDate,
                  style: kEventDateTextStyle,
                ),
                Text(
                  widget.eventTime,
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
