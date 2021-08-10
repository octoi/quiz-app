import 'package:flutter/material.dart';
import 'package:quiz_app/api/api.dart';
import 'package:quiz_app/screens/question_screen.dart';
import 'package:quiz_app/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: appSecondaryColor,
        elevation: 0.0,
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.emoji_emotions,
                color: appSecondaryAccentColor,
                size: MediaQuery.of(context).size.width / 5,
              ),
              SizedBox(height: 30.0),
              TextButton(
                style: TextButton.styleFrom(
                  primary: appPrimaryColor,
                  backgroundColor: appPrimaryAccentColor,
                ),
                onPressed: () async {
                  var _questions = await getData();

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return QuestionScreen(
                        index: 0,
                        score: 0,
                        questions: _questions,
                      );
                    }),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 35.0,
                  child: Center(
                    child: Text(
                      'Start Quiz',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
