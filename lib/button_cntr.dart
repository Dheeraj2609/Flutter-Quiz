import 'package:flutter/material.dart';

class ButtonCntr extends StatefulWidget {
  const ButtonCntr({super.key, required this.buttonName, required this.activeScreens});

  final String buttonName;
  final Function() activeScreens;

  @override
  State<ButtonCntr> createState() {
    return _ButtonContainer();
  }
}

class _ButtonContainer extends State<ButtonCntr> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: widget.activeScreens,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        side: const BorderSide(
          color: Color.fromARGB(255, 219, 202, 190),
          width: 1,
        ),
        foregroundColor: const Color.fromARGB(255, 252, 250, 250),
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      icon: const Icon(Icons.home),
      label: Text(widget.buttonName),
    );
  }
}
