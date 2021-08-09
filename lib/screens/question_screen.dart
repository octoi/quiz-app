import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        title: Text('Question 1'),
        backgroundColor: appSecondaryColor,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
