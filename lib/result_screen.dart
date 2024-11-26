import 'package:flutter/material.dart';
import 'package:flutter_quiz_app_2nd/data/quiz.dart';
import 'package:flutter_quiz_app_2nd/text_container.dart';
import 'package:flutter_quiz_app_2nd/result_list.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.answerList, this.restorePage, {super.key});

  final List<String> answerList;
  final void Function() restorePage;

  List<Map<String, Object>> get answerData {
    final List<Map<String, Object>> dataOfAnswers = [];
    for (var i = 0; i < answerList.length; i++) {
      dataOfAnswers.add({
        "question_index": i,
        "question": questions[i].quizTextVal,
        "correct_answer": questions[i].quizAnsval[0],
        "user_answer": answerList[i],
      });
    }
    return dataOfAnswers;
  }

  @override
  Widget build(BuildContext context) {
    final answerDataDetails = answerData;
    final int totalQuestion = answerList.length;
    final int correctAnswersCount = answerDataDetails.where((data) => (data["user_answer"].toString()) == (data["correct_answer"].toString())).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextCntr(
              text: "You answered ${correctAnswersCount.toString()} out of ${totalQuestion.toString()} questions Correctly !!",
              textColor: const Color.fromARGB(244, 206, 96, 180),
              textWeight: FontWeight.bold,
              textSize: 30,
            ),
            const SizedBox(height: 30),
            ResultList(answerDataDetails),
            const SizedBox(height: 25),
            TextButton.icon(
              onPressed: restorePage,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
                foregroundColor: const Color.fromARGB(255, 252, 250, 250),
                textStyle: const TextStyle(
                  fontSize: 22,
                ),
              ),
              icon: const Icon(Icons.restart_alt),
              label: const Text("Retry Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
