import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';

class MotivacionalCard extends StatelessWidget {
  const MotivacionalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          // constraints: BoxConstraints(
          //   maxWidth: maxDefinedWidth,
          // ),
          padding: const EdgeInsets.all(30),
          child: Text(
            'FRASE MOTIVACIONAL!!',
            style: GoogleFonts.rubik(
                fontSize: constraints.maxWidth > mobileBreakpoint ? 50 : 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontStyle: FontStyle.italic),
          ),
        ),
      );
    });
  }
}
