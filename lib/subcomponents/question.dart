import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        children: [
          Text(question,
              style: GoogleFonts.rubik(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          Text(answer,
              style: GoogleFonts.rubik(
                fontSize: 20,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
