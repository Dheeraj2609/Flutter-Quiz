import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultList extends StatelessWidget {
  const ResultList(this.answerLists, {super.key});

  final List<Map<String, Object>> answerLists;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: SingleChildScrollView(
        child: Column(
          children: answerLists.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 13),
                  decoration: BoxDecoration(
                    color: ((data["user_answer"].toString()) ==
                            data["correct_answer"].toString())
                        ? const Color.fromARGB(255, 126, 187, 225)
                        : const Color.fromARGB(255, 228, 142, 142),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                    ((data["question_index"] as int) + 1).toString(),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 25, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                          data["question"] as String,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 228, 142, 142),
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                          data["user_answer"] as String,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          style: GoogleFonts.lato(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 126, 187, 225),
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                          data["correct_answer"] as String,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
