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
  bool isQuestionClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isQuestionClicked = true;
        });
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
          color: appSecondaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 16.0,
              backgroundColor: !isQuestionClicked
                  ? appPrimaryAccentColor
                  : widget.isCorrect
                      ? appPrimaryAccentColor
                      : appSecondaryAccentColor,
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: !isQuestionClicked
                    ? CircleAvatar(
                        backgroundColor: appSecondaryColor,
                      )
                    : CircleAvatar(
                        backgroundColor: widget.isCorrect
                            ? appPrimaryAccentColor
                            : appSecondaryAccentColor,
                        child: Center(
                          child: Icon(
                            widget.isCorrect ? Icons.check : Icons.close,
                            color: appSecondaryColor,
                            size: 20.0,
                          ),
                        ),
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
      ),
    );
  }
}
