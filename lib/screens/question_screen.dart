import 'package:flutter/material.dart';
import 'package:quiz_app/model/Question.dart';
import 'package:quiz_app/utils/colors.dart';
import 'package:quiz_app/widgets/question_card.dart';

class QuestionScreen extends StatefulWidget {
  final int index;
  final int score;
  final List questions;

  const QuestionScreen({
    Key? key,
    required this.index,
    required this.score,
    required this.questions,
  }) : super(key: key);

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  bool isLastQuestion = false;
  bool isCompleted = false;
  Question question = Question(
    question: 'sample',
    answer: 'sample',
    options: ['sample', 'sample', 'sample', 'sample'],
  );

  @override
  void initState() {
    super.initState();
    question = widget.questions[widget.index];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> getOptions() {
      return question.options.map((option) {
        return QuestionCard(
          option: option,
          isCorrect: option == question.answer,
        );
      }).toList();
    }

    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        title: Text('Question ${widget.index + 1}'),
        backgroundColor: appSecondaryColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  question.question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Column(
                  children: getOptions(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
