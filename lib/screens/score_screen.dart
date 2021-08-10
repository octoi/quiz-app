import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$score',
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: (MediaQuery.of(context).size.width / 3) - 10,
                          height: 1.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                        ),
                        Text(
                          '$total',
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              TextButton(
                style: TextButton.styleFrom(
                  primary: appPrimaryColor,
                  backgroundColor: appPrimaryAccentColor,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return HomeScreen();
                    }),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 35.0,
                  child: Center(
                    child: Text(
                      'Restart Quiz',
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
