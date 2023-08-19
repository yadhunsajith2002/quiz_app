import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnsswers});

  final List<String> chosenAnsswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnsswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'corrext_answer': questions[i].answers[0],
        'user_answer': chosenAnsswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectanswers = summaryData.where((data) {
      return data['user_answer'] == data['corrext_answer'];
    }).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You answered $numCorrectanswers out of $numTotalQuestions qstns crtly"),
              SizedBox(
                height: 30,
              ),
              QuestionSummary(summaryData),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text("Restart quiz"))
            ],
          ),
        ));
  }
}
