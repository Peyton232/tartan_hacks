import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import '../database/database.dart';
import 'dart:async';
import 'dart:io';

String motiResponse = "ERROR";


class MotiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moti the Motivational Robot"),
      ),
      body: MyCustomForm(),
    );
  }
}


// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  String _textFromFile = "";

  fixTheFuture(Future<String> moti) {

  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {

           sendData(myController.text);
            readData().then((String result) {
              setState(() {
                motiResponse = result;
              });
            });


          sleep(Duration(seconds:1));

          readData().then((String result) {
            setState(() {
              motiResponse = result;
            });
          });
            print(motiResponse);
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that Moti responds to
                // TextEditingController.
                content: Text(motiResponse),
              );
            },
          );
        },
        tooltip: 'Send to Moti!',
        child: Icon(Icons.text_fields),
        backgroundColor: Colors.purple,
      ),
    );
  }
}

Future sleep1() {
  return new Future.delayed(const Duration(seconds: 5), () => "5");
}