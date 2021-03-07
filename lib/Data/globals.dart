library my_prj.globals;

import 'package:flutter/material.dart';
import '../CustomWidgets/Events/EventCard.dart';
import '../CustomWidgets/Reminders/ReminderCard.dart';
import '../CustomWidgets/Categories/CategoryCard.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';

int counter = 0;
final selectedDay = DateTime.now();

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

List<CategoryCard> Categories = [
  CategoryCard(
    categoryName: "School Events",
    amountOfItems: 3,
    categoryIcon: Icons.free_breakfast,
    categoryColor: kRed,
  ),
  CategoryCard(
    categoryName: "School",
    amountOfItems: 3,
    categoryIcon: Icons.laptop_mac,
    categoryColor: kGreen,
  ),
  CategoryCard(
    categoryName: "Chores",
    amountOfItems: 2,
    categoryIcon: Icons.home,
    categoryColor: kBlue,
  )
];

Map<DateTime, List<String>> eventDays = {
  selectedDay.subtract(Duration(days: 2)): ["Event name 3"],
  selectedDay.subtract(Duration(days: 1)): ["Event name 2"],
  selectedDay: ["Event Name 1"],
  selectedDay.add(Duration(days: 1)): [],
  selectedDay.add(Duration(days: 2)): [],
  selectedDay.add(Duration(days: 3)): [],
  selectedDay.add(Duration(days: 4)): [],
  selectedDay.add(Duration(days: 5)): [],
  selectedDay.add(Duration(days: 6)): [],
  selectedDay.add(Duration(days: 7)): [],
  selectedDay.add(Duration(days: 8)): [],
  selectedDay.add(Duration(days: 9)): [],
  selectedDay.add(Duration(days: 10)): [],
  selectedDay.add(Duration(days: 11)): [],
  selectedDay.add(Duration(days: 12)): [],
  selectedDay.add(Duration(days: 13)): [],
  selectedDay.add(Duration(days: 14)): [],
  selectedDay.add(Duration(days: 15)): [],
  selectedDay.add(Duration(days: 16)): [],
  selectedDay.add(Duration(days: 17)): [],
  selectedDay.add(Duration(days: 18)): [],
  selectedDay.add(Duration(days: 19)): [],
  selectedDay.add(Duration(days: 20)): [],
  selectedDay.add(Duration(days: 21)): [],
  selectedDay.add(Duration(days: 22)): [],
  selectedDay.add(Duration(days: 23)): [],
  selectedDay.add(Duration(days: 24)): [],
  selectedDay.add(Duration(days: 25)): [],
  selectedDay.add(Duration(days: 26)): [],
  selectedDay.add(Duration(days: 27)): [],
  selectedDay.add(Duration(days: 28)): [],
  selectedDay.add(Duration(days: 29)): [],
  selectedDay.add(Duration(days: 30)): [],
  // selectedDay.add(Duration(days: 7)): [
  //   'Event A10',
  //   'Event B10',
  //   'Event C10'
  // ],
  // selectedDay.add(Duration(days: 11)): [
  //   'Event A11',
  //   'Event B11',
  // ],
  // selectedDay.add(Duration(days: 17)): [
  //   'Event A12',
  //   'Event B12',
  //   'Event C12',
  //   'Event D12'
  // ],
  // selectedDay.add(Duration(days: 22)): [
  //   'Event A13',
  //   'Event B13',
  // ],
  // selectedDay.add(Duration(days: 26)): [
  //   'Event A14',
  //   'Event B14',
  //   'Event C14'
  // ],
};
