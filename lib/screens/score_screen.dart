import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colors.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int total;

  const ScoreScreen({
    Key? key,
    required this.score,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: appSecondaryColor,
        elevation: 0.0,
        title: Text('Your Score'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: appPrimaryAccentColor,
                radius: MediaQuery.of(context).size.width / 3,
                child: CircleAvatar(
                  radius: (MediaQuery.of(context).size.width / 3) - 3,
                  backgroundColor: appPrimaryColor,
                  child: Center(
                    child: Column(
                      children: [Text('')],
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
