import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import '../database/database.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:particles_flutter/particles_flutter.dart';

String motiResponse = "My name is Moti!";

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({@required this.messageContent, @required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello!", messageType: "receiver"),
  ChatMessage(
      messageContent: "How can I help you today?", messageType: "receiver"),
];

class MotiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Talk to Moti"),
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
  bool motiConfused = false;

  fixTheFuture(Future<String> moti) {}

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Stack(children: <Widget>[
        // Container(
        //   child: Center(
        //     child: CircularParticle(
        //       awayRadius: 80,
        //       numberOfParticles: 50,
        //       speedOfParticles: 0.5,
        //       height: screenHeight,
        //       width: screenWidth,
        //       onTapAnimation: true,
        //       particleColor: Colors.deepPurple[400].withAlpha(150),
        //       awayAnimationDuration: Duration(milliseconds: 600),
        //       maxParticleSize: 15,
        //       isRandSize: true,
        //       isRandomColor: false, //If we want rainbow colors
        //       randColorList: [
        //         Colors.red.withAlpha(210),
        //         Colors.white.withAlpha(210),
        //         Colors.yellow.withAlpha(210),
        //         Colors.green.withAlpha(210),
        //         Colors.blue.withAlpha(210)
        //       ],
        //       awayAnimationCurve: Curves.easeInOutBack,
        //       enableHover: true,
        //       hoverColor: Colors.white,
        //       hoverRadius: 90,
        //       connectDots: true,
        //     ),
        //   ),
        // ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 300,
              child: Image.asset(
                motiConfused
                    ? "images/motiConfused.png"
                    : "images/motiHappy.png",
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kOffWhite,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                //height: 20,
                child: ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  //physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                          left: 14, right: 14, top: 10, bottom: 10),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"
                            ? Alignment.topLeft
                            : Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (messages[index].messageType == "receiver"
                                ? Colors.grey[300]
                                : Colors.deepPurple[200]),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            messages[index].messageContent,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              color: Colors.deepPurple[100],
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none,
                        ),
                        controller: myController,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 40.0,
                    child: FittedBox(
                      child: FloatingActionButton(
                        // When the user presses the button, show an alert dialog containing
                        // the text that the user has entered into the text field.
                        onPressed: () {
                          messages.add(
                            ChatMessage(
                                messageContent: myController.text,
                                messageType: "sender"),
                          );
                          sendData(myController.text);
                          readData().then((String result) {
                            setState(() {
                              motiResponse = result;
                            });
                          });
                          myController.clear();

                          sleep(Duration(seconds: 3));

                          readData().then((String result) {
                            setState(() {
                              motiResponse = result;

                              if (motiResponse ==
                                  "I am sorry, but I do not understand.") {
                                motiConfused = true;
                              } else {
                                motiConfused = false;
                              }
                            });
                          });

                          messages.add(
                            ChatMessage(
                                messageContent: motiResponse,
                                messageType: "receiver"),
                          );
                          // print(motiResponse);
                          // return showDialog(
                          //   context: context,
                          //   builder: (context) {
                          //     //return getReceiverView(ChatBubbleClipper4(), context);
                          //     return AlertDialog(
                          //       // Retrieve the text the that Moti responds to
                          //       // TextEditingController.
                          //       content: Text(motiResponse),
                          //     );
                          //   },
                          // );
                        },
                        tooltip: 'Send to Moti!',
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                        backgroundColor: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
      // floatingActionButton: FloatingActionButton(
      //   // When the user presses the button, show an alert dialog containing
      //   // the text that the user has entered into the text field.
      //   onPressed: () {
      //     sendData(myController.text);
      //     readData().then((String result) {
      //       setState(() {
      //         motiResponse = result;
      //       });
      //     });
      //
      //     sleep(Duration(seconds: 3));
      //
      //     readData().then((String result) {
      //       setState(() {
      //         motiResponse = result;
      //       });
      //     });
      //     print(motiResponse);
      //     return showDialog(
      //       context: context,
      //       builder: (context) {
      //         //return getReceiverView(ChatBubbleClipper4(), context);
      //         return AlertDialog(
      //           // Retrieve the text the that Moti responds to
      //           // TextEditingController.
      //           content: Text(motiResponse),
      //         );
      //       },
      //     );
      //   },
      //   tooltip: 'Send to Moti!',
      //   child: Icon(Icons.text_fields),
      //   backgroundColor: Colors.purple,
      // ),
    );
  }
}

Future sleep1() {
  return new Future.delayed(const Duration(seconds: 5), () => "5");
}
