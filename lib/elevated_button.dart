import 'package:flutter/material.dart';

class ElevatedButtonCntr extends StatefulWidget {
  const ElevatedButtonCntr({super.key, required this.buttonName, required this.onClickEvent,});

  final String buttonName;
  final void Function(String answer) onClickEvent;

  @override
  State<ElevatedButtonCntr> createState() {
    return _ElevatedButtonContainer();
  }
}

class _ElevatedButtonContainer extends State<ElevatedButtonCntr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          widget.onClickEvent(widget.buttonName);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15),
          foregroundColor: const Color.fromARGB(255, 248, 245, 245),
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: const Color.fromARGB(222, 161, 43, 159),
        ),
        child: Text(widget.buttonName, textAlign: TextAlign.center),
      ),
    );
  }
}
