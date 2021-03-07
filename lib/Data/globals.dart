library my_prj.globals;

import 'package:flutter/material.dart';
import '../CustomWidgets/Events/EventCard.dart';
import '../CustomWidgets/Reminders/ReminderCard.dart';
import '../CustomWidgets/Categories/CategoryCard.dart';
import 'package:tartan_hacks/Data/constants.dart';

int counter = 0;

//hardcoded a few starting ones
//TODO; Show top 5
List<EventCard> Events = [
  EventCard(
    eventName: "TartanHacks Day 1",
    eventNotes: "Brainstorm",
    eventDate: "March 5",
    eventTime: "12:00 PM",
    categoryIcon: Icons.description,
    categoryColor: kBlue,
  ),
  EventCard(
    eventName: "TartanHacks Day 2",
    eventNotes: "Ui and Database",
    eventDate: "March 6",
    eventTime: "11:00 AM",
    categoryIcon: Icons.directions_run,
    categoryColor: kGreen,
  ),
  EventCard(
    eventName: "TartanHacks Day 3",
    eventNotes: "Finalize and Video",
    eventDate: "March 7",
    eventTime: "8:00 AM",
    categoryIcon: Icons.home,
    categoryColor: kRed,
  )
];

List<ReminderCard> Reminds = [
  ReminderCard(
    reminderName: "Reminder Name 1",
    reminderNotes: "Reminder Notes",
    reminderDate: "March 5",
    reminderTime: "10:00 PM",
    categoryIcon: Icons.check,
    categoryColor: kRed,
  ),
  ReminderCard(
    reminderName: "Reminder Name 2",
    reminderNotes: "Reminder Notes",
    reminderDate: "March 5",
    reminderTime: "10:00 PM",
    categoryIcon: Icons.check,
    categoryColor: kBlue,
  ),
  ReminderCard(
    reminderName: "Reminder Name 3",
    reminderNotes: "Reminder Notes",
    reminderDate: "March 5",
    reminderTime: "10:00 PM",
    categoryIcon: Icons.check,
    categoryColor: kRed,
  ),
];
