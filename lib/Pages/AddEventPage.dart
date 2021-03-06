import 'package:flutter/material.dart';



class AddEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Add Event",
          //style: kAppBarTextStyle,
        ),
      ),
      body: Stack(
        children: <Widget>[

        ],
      ),
    );
  }
}