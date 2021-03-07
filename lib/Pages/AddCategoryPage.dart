import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class AddCategoryPage extends StatefulWidget {
  String categoryName;

  AddCategoryPage({
    this.categoryName,
  });

  @override
  _AddCategoryPageState createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Category"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Category Name:",
              style: kHeaderTextStyle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: Colors.deepPurple[400],
                    width: 2.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter a Category Name',
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      widget.categoryName = value;
                      return null;
                    },
                  ),
                ),
              ),
            ),
            Text(
              "Category Color:",
              style: kHeaderTextStyle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print("Have a way to only select one");
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: _isSelected
                                ? kSemiBlack
                                : kOffWhite, //TODO: Ternary operation for color selection
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.circle,
                          size: 50.0,
                          color: kRed,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print("Have a way to only select one");
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: _isSelected
                                ? kSemiBlack
                                : kOffWhite, //TODO: Ternary operation for color selection
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.circle,
                          size: 50.0,
                          color: kGreen,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print("Have a way to only select one");
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: _isSelected
                                ? kSemiBlack
                                : kOffWhite, //TODO: Ternary operation for color selection
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.circle,
                          size: 50.0,
                          color: kBlue,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print("Have a way to only select one");
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: _isSelected
                                ? kSemiBlack
                                : kOffWhite, //TODO: Ternary operation for color selection
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.circle,
                          size: 50.0,
                          color: kYellow,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print("Have a way to only select one");
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: _isSelected
                                ? kSemiBlack
                                : kOffWhite, //TODO: Ternary operation for color selection
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.circle,
                          size: 50.0,
                          color: kSemiDarkPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Category Icon:",
              style: kHeaderTextStyle,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 40.0,
                    color: Colors.grey[400],
                  ),
                  Icon(
                    Icons.laptop_mac,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.local_cafe,
                    size: 40.0,
                    color: Colors.grey[400],
                  ),
                  Icon(
                    Icons.directions_car,
                    size: 40.0,
                    color: Colors.grey[400],
                  ),
                  Icon(
                    Icons.directions_run,
                    size: 40.0,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            //TODO: Add icon selection
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Add Category'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
