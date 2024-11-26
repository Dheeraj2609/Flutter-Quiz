import 'package:flutter/material.dart';
import 'package:flutter_quiz_app_2nd/data/quiz.dart';
import 'package:flutter_quiz_app_2nd/start_quiz_cntr.dart';
import 'package:flutter_quiz_app_2nd/question_cntr.dart';
import 'package:flutter_quiz_app_2nd/result_screen.dart';

class QuizCntr extends StatefulWidget {
  const QuizCntr({super.key});

  @override
  State<QuizCntr> createState() {
    return _QuizApp();
  }
}

class _QuizApp extends State<QuizCntr> {
  Widget? activeScreen;

  List<String> answeredQuestions = [];

  @override
  void initState() {
    activeScreen = StartQuizAntr(activePage);
    super.initState();
  }

  void storeAnswer(String answer) {
    answeredQuestions.add(answer);

    if (questions.length == answeredQuestions.length) {
      setState(() {
        activeScreen = ResultScreen(answeredQuestions, activePage);
      });
    }
  }

  void activePage() {
    setState(() {
      answeredQuestions = [];
      activeScreen = QuestionScreen(selectedAns: storeAnswer,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: activeScreen,
    );
  }
}
