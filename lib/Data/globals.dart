library my_prj.globals;

import 'package:flutter/material.dart';
import '../CustomWidgets/Events/EventCard.dart';
import '../CustomWidgets/Reminders/ReminderCard.dart';
import '../CustomWidgets/Categories/CategoryCard.dart';
import 'package:tartan_hacks/Data/constants.dart';

//hardcoded a few starting ones
List<EventCard> Events = [
  EventCard(
    eventName: "Calendar Event Name 1",
    eventNotes: "Calendar Notes",
    eventDate: "March 7",
    eventTime: "5:00 PM",
    categoryIcon: Icons.description,
    categoryColor: kBlue,
  ),
  EventCard(
    eventName: "Calendar Event Name 2",
    eventNotes: "Calendar Notes",
    eventDate: "March 6",
    eventTime: "5:00 PM",
    categoryIcon: Icons.directions_run,
    categoryColor: kGreen,
  ),
  EventCard(
    eventName: "Calendar Event Name 3",
    eventNotes: "Calendar Notes",
    eventDate: "March 5",
    eventTime: "5:00 PM",
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
    categoryIcon: Icons.check_circle,
    categoryColor: kRed,
  ),
  ReminderCard(
    reminderName: "Reminder Name 2",
    reminderNotes: "Reminder Notes",
    reminderDate: "March 5",
    reminderTime: "10:00 PM",
    categoryIcon: Icons.check_circle,
    categoryColor: kBlue,
  ),
  ReminderCard(
    reminderName: "Reminder Name 3",
    reminderNotes: "Reminder Notes",
    reminderDate: "March 5",
    reminderTime: "10:00 PM",
    categoryIcon: Icons.check_circle,
    categoryColor: kRed,
  ),
];
