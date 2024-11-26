import 'package:flutter/material.dart';
import 'package:flutter_quiz_app_2nd/text_container.dart';
import 'package:flutter_quiz_app_2nd/elevated_button.dart';
import 'package:flutter_quiz_app_2nd/data/quiz.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.selectedAns});

  final void Function(String answer) selectedAns;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenCntr();
  }
}

class _QuestionScreenCntr extends State<QuestionScreen> {
  var questionIndex = 0;

  void increaseCount(String answer) {
    widget.selectedAns(answer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextCntr(
              text: currentQuestion.quizTextVal,
              textColor: const Color.fromARGB(244, 206, 96, 180),
              textWeight: FontWeight.bold,
              textSize: 30,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffleAnswer().map((answer) {
              return ElevatedButtonCntr(
                buttonName: answer,
                onClickEvent: increaseCount,
              );
            }),
          ],
        ),
      ),
    );
  }
}
