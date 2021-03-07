import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';

class CategoryTemplatePage extends StatefulWidget {
  final String categoryName;
  final Color categoryColor;

  CategoryTemplatePage({
    @required this.categoryName,
    @required this.categoryColor,
  });

  @override
  _CategoryTemplatePageState createState() => _CategoryTemplatePageState();
}

class _CategoryTemplatePageState extends State<CategoryTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      appBar: AppBar(
        title: Text(widget.categoryName),
        backgroundColor: widget.categoryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Events",
                style: kHeaderTextStyle,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: EventCard(
                  eventName: "TartanHacks Day 1",
                  eventNotes: "3/5/2021",
                  eventDate: "3/5/2021",
                  eventTime: "All Day",
                  categoryIcon: Icons.free_breakfast,
                  categoryColor: widget.categoryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: EventCard(
                  eventName: "TartanHacks Day 2",
                  eventNotes: "3/5/2021",
                  eventDate: "3/5/2021",
                  eventTime: "All Day",
                  categoryIcon: Icons.free_breakfast,
                  categoryColor: widget.categoryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: EventCard(
                  eventName: "TartanHacks Day 3",
                  eventNotes: "3/5/2021",
                  eventDate: "3/5/2021",
                  eventTime: "All Day",
                  categoryIcon: Icons.free_breakfast,
                  categoryColor: widget.categoryColor,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10.0),
              //   child: EventCard(
              //     eventName: "Certain Category Name",
              //     eventNotes: "Continue UI",
              //     eventDate: "Date",
              //     eventTime: "Time",
              //     categoryIcon: Icons.search,
              //     categoryColor: widget.categoryColor,
              //   ),
              // ),
              // SizedBox(
              //   height: 30.0,
              // ),
              // Text(
              //   "Reminders",
              //   style: kHeaderTextStyle,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10.0),
              //   child: EventCard(
              //     eventName: "Certain Category Name",
              //     eventNotes: "Continue UI",
              //     eventDate: "Date",
              //     eventTime: "Time",
              //     categoryIcon: Icons.push_pin,
              //     categoryColor: widget.categoryColor,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10.0),
              //   child: EventCard(
              //     eventName: "Certain Category Name",
              //     eventNotes: "Continue UI",
              //     eventDate: "Date",
              //     eventTime: "Time",
              //     categoryIcon: Icons.push_pin,
              //     categoryColor: widget.categoryColor,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10.0),
              //   child: EventCard(
              //     eventName: "Certain Category Name",
              //     eventNotes: "Continue UI",
              //     eventDate: "Date",
              //     eventTime: "Time",
              //     categoryIcon: Icons.push_pin,
              //     categoryColor: widget.categoryColor,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(vertical: 10.0),
              //   child: EventCard(
              //     eventName: "Certain Category Name",
              //     eventNotes: "Continue UI",
              //     eventDate: "Date",
              //     eventTime: "Time",
              //     categoryIcon: Icons.push_pin,
              //     categoryColor: widget.categoryColor,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
