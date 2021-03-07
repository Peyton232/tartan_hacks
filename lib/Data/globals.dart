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
List<EventCard> Events = [
  EventCard(
    eventName: "Event Name 1",
    eventNotes: "Calendar Notes",
    eventDate: "March 7",
    eventTime: "5:00 PM",
    categoryIcon: Icons.description,
    categoryColor: kBlue,
  ),
  EventCard(
    eventName: "Event Name 2",
    eventNotes: "Calendar Notes",
    eventDate: "March 6",
    eventTime: "5:00 PM",
    categoryIcon: Icons.directions_run,
    categoryColor: kGreen,
  ),
  EventCard(
    eventName: "Event Name 3",
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
