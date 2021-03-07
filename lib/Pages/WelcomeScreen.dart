import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/AnimatedBackground.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoriesContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventsContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/RemindersContainer.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/ReminderCard.dart';
import '../database/database.dart';
import 'AddEventPage.dart';
import 'package:particles_flutter/particles_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
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
            //TODO: Add animated background
            Container(
              decoration: BoxDecoration(
                  //color: kDarkPurple,
                  ),
              height: 400,
              // child: Center(
              //   child: CircularParticle(
              //     awayRadius: 80,
              //     numberOfParticles: 50,
              //     speedOfParticles: 0.5,
              //     height: screenHeight,
              //     width: screenWidth,
              //     onTapAnimation: true,
              //     particleColor: Colors.deepPurple[400].withAlpha(150),
              //     awayAnimationDuration: Duration(milliseconds: 600),
              //     maxParticleSize: 15,
              //     isRandSize: true,
              //     isRandomColor: false, //If we want rainbow colors
              //     randColorList: [
              //       Colors.red.withAlpha(210),
              //       Colors.white.withAlpha(210),
              //       Colors.yellow.withAlpha(210),
              //       Colors.green.withAlpha(210),
              //       Colors.blue.withAlpha(210)
              //     ],
              //     awayAnimationCurve: Curves.easeInOutBack,
              //     enableHover: true,
              //     hoverColor: Colors.white,
              //     hoverRadius: 90,
              //     connectDots: true,
              //   ),
              // ),
            ),
            Container(
              decoration: BoxDecoration(
                color: kOffWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
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
          ],
        ),
      ),
    );
  }
}
