import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app/model/Question.dart';

getData() async {
  try {
    var url = Uri.parse(
        'https://opentdb.com/api.php?amount=5&category=18&type=multiple');
    List<Question> questions = [];

    var response = await http.get(url);
    var jsonRes = jsonDecode(response.body);

    for (var questionItem in jsonRes['results']) {
      List<String> _options = [
        ...questionItem['incorrect_answers'],
        questionItem['correct_answer'],
      ];

      _options.sort();

      Question newQuestion = Question(
        question: questionItem['question'],
        answer: questionItem['correct_answer'],
        options: _options,
      );

      questions.add(newQuestion);
    }

    return questions;
  } catch (err) {
    print(err);
    return [];
  }
}
