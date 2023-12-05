import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/motivacional_card/motivacional_texts.dart';

class MotivacionalCard extends StatelessWidget {
  const MotivacionalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = constraints.maxWidth > tabletBreakpoint
          ? 1100
          : constraints.maxWidth > mobileBreakpoint
              ? 768
              : 300;
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: maxDefinedWidth,
          ),
          padding: const EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MotivacionalTexts.quote,
                style: GoogleFonts.rubik(
                    fontSize: constraints.maxWidth > mobileBreakpoint ? 35 : 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.left,
              ),
              Text(
                MotivacionalTexts.author,
                style: GoogleFonts.rubik(
                    fontSize: constraints.maxWidth > mobileBreakpoint ? 20 : 15,
                    color: Colors.white,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      );
    });
  }
}
