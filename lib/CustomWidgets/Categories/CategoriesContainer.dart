import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoryTemplatePage.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoryCard.dart';

class CategoriesContainer extends StatefulWidget {
  @override
  _CategoriesContainerState createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 30.0,
            ),
            child: Text(
              "Categories",
              style: kHeaderTextStyle,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  //TODO: Make this from a list
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: CategoryCard(
                      categoryName: "School Events",
                      amountOfItems: 3,
                      categoryIcon: Icons.free_breakfast,
                      categoryColor: kRed,
                      buttonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryTemplatePage(
                              categoryName: "(Category)",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: CategoryCard(
                      categoryName: "School",
                      amountOfItems: 3,
                      categoryIcon: Icons.laptop_mac,
                      categoryColor: kGreen,
                      buttonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryTemplatePage(
                              categoryName: "(Category)",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: CategoryCard(
                      categoryName: "Chores",
                      amountOfItems: 2,
                      categoryIcon: Icons.home,
                      categoryColor: kBlue,
                      buttonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryTemplatePage(
                              categoryName: "(Category)",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: CategoryCard(
                      categoryName: "Work",
                      amountOfItems: 2,
                      categoryIcon: Icons.directions_car,
                      categoryColor: kYellow,
                      buttonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryTemplatePage(
                              categoryName: "(Category)",
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
