import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighlightedTexts extends StatelessWidget {
  final String textPart1;
  final String textPart2;
  final String textEnphasis1;
  final String textPart3;
  final String textEnphasis2;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;

  const HighlightedTexts({
    super.key,
    required this.textPart1,
    required this.textPart2,
    required this.textEnphasis1,
    this.textPart3 = " ",
    this.textEnphasis2 = " ",
    this.color = Colors.white,
    this.fontSize = 30,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          text: textPart1,
          children: [
            TextSpan(
              text: textEnphasis1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            TextSpan(
              text: textPart2,
            ),
            TextSpan(
              text: textEnphasis2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            TextSpan(
              text: textPart3,
            ),
          ],
        ),
        style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
            fontFamily: GoogleFonts.rubik().fontFamily),
        textAlign: textAlign);
  }
}
