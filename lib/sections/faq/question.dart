import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.question,
    required this.answer,
    required this.isMobile,
  });

  final String question;
  final String answer;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: GoogleFonts.rubik(
              fontSize: isMobile ? 20 : 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 10),
          Text(
            '\t\t\t$answer',
            style: GoogleFonts.rubik(
              fontSize: isMobile ? 15 : 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
