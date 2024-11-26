import 'package:flutter/material.dart';
import 'package:flutter_quiz_app_2nd/quiz_cntr.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 36, 17, 68),
            Color.fromARGB(255, 95, 21, 105)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const QuizCntr(),
    );
  }
}
