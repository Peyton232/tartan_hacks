import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/Data/globals.dart' as globals;
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventTemplatePage.dart';
import 'package:tartan_hacks/Pages/AddEventPage.dart';

class UpcomingEvents extends StatefulWidget {
  @override
  _UpcomingEventsState createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
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
                    "Your Events",
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
                      builder: (context) => AddEventPage(),
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
          itemCount: globals.Events.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: 20.0,
              ),
              child: EventCard(
                eventName: globals.Events[index].eventName,
                eventNotes: globals.Events[index].eventNotes,
                eventDate: globals.Events[index].eventDate,
                eventTime: globals.Events[index].eventTime,
                categoryIcon: globals.Events[index].categoryIcon,
                categoryColor: globals.Events[index].categoryColor,
                buttonPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EventTemplatePage(
                        //Navigate to subpage
                        eventName: globals.Events[index].eventName,
                        eventNotes: globals.Events[index].eventNotes,
                        eventDate: globals.Events[index].eventDate,
                        eventTime: globals.Events[index].eventTime,
                        categoryIcon: globals.Events[index].categoryIcon,
                        categoryColor: globals.Events[index].categoryColor,
                      ),
                    ),
                  );
                },
                //setup subpage here
                // paragraph: globals.Events[index].paragraph,
                // stepsA: globals.Events[index].steps,
                // videoKey: globals.Events[index].video,
              ),
            );
          },
        ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.deepPurple[300],
        //     elevation: 3,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(20.0),
        //     ),
        //   ),
        //   onPressed: () => setState(() => globals.counter++),
        //   child: Icon(Icons.cached),
        // ),
      ],
    );
  }
}
