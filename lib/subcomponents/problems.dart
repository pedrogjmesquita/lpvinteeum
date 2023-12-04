import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Problems extends StatelessWidget {
  const Problems({super.key, required this.tittle, required this.text});
  final String text;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(tittle,
            style: GoogleFonts.rubik(
              fontSize: 45,
              color: Colors.white,
            )),
        const SizedBox(height: 30),
        Text(text,
            style: GoogleFonts.rubik(
              fontSize: 20,
              color: Colors.white,
            )),
      ],
    );
  }
}
