import 'package:flutter/material.dart';
import 'package:flutter_quiz_app_2nd/text_container.dart';
import 'package:flutter_quiz_app_2nd/button_cntr.dart';

class StartQuizAntr extends StatelessWidget {
  const StartQuizAntr(this.activeScreen, {super.key});

  final Function() activeScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ), // For opacity please use below color method inside Image method
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        const TextCntr(
          text: "Welcome to Great karigaalan quiz!",
          textColor: Colors.white,
          textWeight: FontWeight.normal,
          textSize: 24,
        ),
        const SizedBox(height: 30),
        ButtonCntr(buttonName: 'Start Quiz!', activeScreens: activeScreen),
      ],
    );
  }
}
