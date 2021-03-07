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
    eventNotes: "Brainstorm and start working on UI",
    eventDate: "March 5",
    eventTime: "12:00 PM",
    categoryIcon: Icons.local_cafe,
    categoryColor: kRed,
  ),
  EventCard(
    eventName: "TartanHacks Day 2",
    eventNotes: "Continue UI, fix database, and configure AI",
    eventDate: "March 6",
    eventTime: "11:00 AM",
    categoryIcon: Icons.local_cafe,
    categoryColor: kRed,
  ),
  EventCard(
    eventName: "TartanHacks Day 3",
    eventNotes: "Finalize the features and made video",
    eventDate: "March 7",
    eventTime: "8:00 AM",
    categoryIcon: Icons.local_cafe,
    categoryColor: kRed,
  ),
  EventCard(
    eventName: "Virtual Restaurant",
    eventNotes: "Continue the UI and basic functionality",
    eventDate: "March 8",
    eventTime: "11:30 AM",
    categoryIcon: Icons.laptop_mac,
    categoryColor: kGreen,
  ),
  EventCard(
    eventName: "Work Project",
    eventNotes: "Start UI based on Google",
    eventDate: "March 11",
    eventTime: "4:00 PM",
    categoryIcon: Icons.home,
    categoryColor: kYellow,
  )
];

List<ReminderCard> Reminds = [
  ReminderCard(
    reminderName: "Feed Cat",
    reminderNotes: "Don't put too much food",
    reminderDate: "Today",
    reminderTime: "12:30 PM",
    categoryIcon: Icons.push_pin,
    categoryColor: kBlue,
  ),
  ReminderCard(
    reminderName: "Vacuum Room",
    reminderNotes: "Charge the battery after",
    reminderDate: "Today",
    reminderTime: "3:00 PM",
    categoryIcon: Icons.push_pin,
    categoryColor: kBlue,
  ),
  ReminderCard(
    reminderName: "Do 4600 Midterm",
    reminderNotes: "Go through notes",
    reminderDate: "Tomorrow",
    reminderTime: "9:00 AM",
    categoryIcon: Icons.push_pin,
    categoryColor: kGreen,
  ),
];
