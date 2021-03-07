import 'package:flutter/material.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoryTemplatePage.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:tartan_hacks/CustomWidgets/Categories/CategoryCard.dart';
import 'package:tartan_hacks/Pages/AddCategoryPage.dart';
import '../Events/EventCard.dart';
import '../Reminders/ReminderCard.dart';
import 'package:tartan_hacks/Data/globals.dart' as globals;

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
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Categories",
                    style: kHeaderTextStyle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddCategoryPage(),
                        ),
                      );
                    },
                    child: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(10, 30),
                      primary: Colors.deepPurple[300],
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  //TODO: Make this from a list

                  // ListView.builder(
                  //   itemCount: globals.Categories.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return Padding(
                  //       padding: EdgeInsets.only(
                  //         right: 20.0,
                  //       ),
                  //       child: CategoryCard(
                  //         categoryName: globals.Categories[index].categoryName,
                  //         amountOfItems: globals.Categories[index].amountOfItems,
                  //         categoryIcon: globals.Categories[index].categoryIcon,
                  //         categoryColor: globals.Categories[index].categoryColor,
                  //       ),
                  //     );
                  //   },
                  // ),

                  Padding(
                    padding: EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: CategoryCard(
                      categoryName: "Events",
                      amountOfItems: 3,
                      categoryIcon: Icons.free_breakfast,
                      categoryColor: kRed,
                      buttonPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryTemplatePage(
                              categoryName: "School Events",
                              categoryColor: kRed,
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
                              categoryName: "School",
                              categoryColor: kGreen,
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
                              categoryName: "Chores",
                              categoryColor: kBlue,
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
                              categoryName: "Work",
                              categoryColor: kYellow,
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
