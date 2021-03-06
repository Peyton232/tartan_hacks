import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoriesContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventsContainer.dart';
import 'package:tartan_hacks/CustomWidgets/Reminders/RemindersContainer.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Events/EventCard.dart';
import '../database/database.dart';
import 'AddEventPage.dart';
import 'AddReminderPage.dart';
import 'package:tartan_hacks/Data/globals.dart' as globals;
import 'dart:async';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:smart_select/smart_select.dart';

List<bool> isSelected = [true];
String color = 'purple';
List<S2Choice<String>> options = [
  S2Choice<String>(value: 'red', title: 'events'),
  S2Choice<String>(value: 'blue', title: 'chores'),
  S2Choice<String>(value: 'green', title: 'school'),
  S2Choice<String>(value: 'yellow', title: 'work'),
  S2Choice<String>(value: 'purple', title: 'other'),
];

//data to pass into new remind object
String name;
String notes;
String date;
String time;
IconData catIcon;
Color catColor;

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPage createState() => _AddEventPage();
}

class _AddEventPage extends State<AddEventPage> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add events"),
      ),
      body: MyCustomForm(),
    );
  }
}


// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Name of event"),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                name = value;
                return null;
              },
            ),
            Text("Notes on event"),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                notes = value;
                return null;
              },
            ),
            Text("Date"),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                date = value;
                return null;
              },
            ),
            Text("Time"),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                time = value;
                return null;
              },
            ),

            // ToggleButtons(
            //   children: <Widget>[
            //     Icon(Icons.check_circle),
            //   ],
            //   isSelected: isSelected,
            //   onPressed: (int index) {
            //     setState(() {
            //       isSelected[index] = !isSelected[index];
            //     });
            //   },
            // ),
            //change icon and color based on category chosen
            SmartSelect<String>.single(
                title: 'Category',
                value: color,
                choiceItems: options,
                onChange: (state) => setState(() => color = state.value)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Processing Data')));
                    //add data to list
                    if (color == 'blue'){
                      catIcon = Icons.home;
                      catColor = Colors.blue;
                    } else if (color == 'yellow'){
                      catIcon = Icons.directions_car;
                      catColor = Colors.yellow;
                    } else if (color == 'red'){
                      catIcon = Icons.free_breakfast;
                      catColor = Colors.red;
                    } else if (color == 'green'){
                      catIcon = Icons.computer;
                      catColor = Colors.green;
                    } else {
                      catIcon = Icons.face;
                      catColor = Colors.purple;
                    }
                    globals.Events.add(
                        EventCard(
                          eventName: name,
                          eventNotes: notes,
                          eventDate: date,
                          eventTime: time,
                          categoryIcon: catIcon,
                          categoryColor: catColor,
                        )
                    );
                    setState(() {});
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
