import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class CategoryCard extends StatefulWidget {
  final String categoryName;
  final int amountOfItems;
  final IconData categoryIcon;
  final Color categoryColor;
  final Function buttonPressed;

  CategoryCard({
    @required this.categoryName,
    @required this.amountOfItems,
    @required this.categoryIcon,
    @required this.categoryColor,
    this.buttonPressed,
  });

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: widget.categoryColor,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: () {
        print("Category button pressed");
        widget.buttonPressed();
      },
      child: Container(
        height: 180,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.categoryIcon,
              size: 80,
            ),
            Text(
              widget.categoryName,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            Center(
              child: Text(
                "${widget.amountOfItems} Plans",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[300]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
