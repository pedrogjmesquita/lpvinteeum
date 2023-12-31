import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';

class Problems extends StatelessWidget {
  const Problems(
      {super.key,
      required this.tittle,
      required this.text,
      required this.isMobile});
  final String text;
  final String tittle;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(tittle,
            style: GoogleFonts.rubik(
              fontSize: isMobile ? 30 : 35,
              color: colors[6],
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
