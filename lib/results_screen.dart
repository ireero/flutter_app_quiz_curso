import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {

  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>>  summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index' : i,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answers[0],
        'user_answer' : chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {

    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text(
                  'You answerd $numTotalQuestions out of $numTotalQuestions questions correctly!',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30,),
            TextButton.icon(
              icon: const Icon(
                Icons.restart_alt_outlined,
                size: 22,
                color: Colors.white,
              ),
              onPressed: (){},
              style: TextButton.styleFrom(

              ),
              label: const Text('Restart Quiz', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}