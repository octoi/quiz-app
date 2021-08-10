import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class QuestionCard extends StatelessWidget {
  final String option;
  final bool isCorrect;
  final bool isQuestionClicked;

  const QuestionCard({
    Key? key,
    required this.option,
    this.isCorrect = false,
    this.isQuestionClicked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                : isCorrect
                    ? appPrimaryAccentColor
                    : appSecondaryAccentColor,
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: !isQuestionClicked
                  ? CircleAvatar(
                      backgroundColor: appSecondaryColor,
                    )
                  : CircleAvatar(
                      backgroundColor: isCorrect
                          ? appPrimaryAccentColor
                          : appSecondaryAccentColor,
                      child: Center(
                        child: Icon(
                          isCorrect ? Icons.check : Icons.close,
                          color: appSecondaryColor,
                          size: 20.0,
                        ),
                      ),
                    ),
            ),
          ),
          SizedBox(width: 12.0),
          Text(
            option,
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
