import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';

class CategoryTemplatePage extends StatefulWidget {
  final String categoryName;

  CategoryTemplatePage({
    @required this.categoryName,
  });

  @override
  _CategoryTemplatePageState createState() => _CategoryTemplatePageState();
}

class _CategoryTemplatePageState extends State<CategoryTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
      ),
    );
  }
}
