import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class QuestionCard extends StatefulWidget {
  final String option;
  final bool isCorrect;

  const QuestionCard({
    Key? key,
    required this.option,
    this.isCorrect = false,
  }) : super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: appSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 16.0,
            backgroundColor: appPrimaryAccentColor,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundColor: appSecondaryColor,
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Text(
            widget.option,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
            ),
          )
        ],
      ),
    );
  }
}
