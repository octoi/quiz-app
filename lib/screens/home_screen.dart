import 'package:flutter/material.dart';
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
              TextButton(
                onPressed: () {},
                child: Text('Start Quiz'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
