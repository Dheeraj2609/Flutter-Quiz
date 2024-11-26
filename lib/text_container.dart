import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCntr extends StatelessWidget {
  const TextCntr(
      {super.key,
      required this.text,
      required this.textColor,
      required this.textWeight,
      required this.textSize});

  final String text;
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      style: GoogleFonts.lato(
        fontSize: textSize,
        color: textColor,
        fontWeight: textWeight,
      ),
      textAlign: TextAlign.center,
      text,
    );
  }
}
