import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class ViewButton extends StatefulWidget {
  final String buttonLabel;
  final Function buttonPressed;

  ViewButton({
    this.buttonPressed,
    this.buttonLabel,
  });

  @override
  _ViewButtonState createState() => _ViewButtonState();
}

class _ViewButtonState extends State<ViewButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Colors.deepPurple[200]),
        elevation: MaterialStateProperty.all(4.0),
        overlayColor: MaterialStateProperty.all<Color>(Colors.grey[300]),
      ),
      child: Text(
        widget.buttonLabel,
        style: TextStyle(
          color: kSemiBlack,
        ),
      ),
      onPressed: () {
        setState(() {
          widget.buttonPressed();
        });
      },
    );
  }
}
