import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/sections/consequences/highlighted_texts.dart';
import 'package:landing_page/sections/walkthrough/walkthrough_texts.dart';

class Walkthrough extends StatelessWidget {
  const Walkthrough({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = 300;
      bool isMobile = true;

      if (constraints.maxWidth > mobileBreakpoint) {
        isMobile = false;
        if (constraints.maxWidth > tabletBreakpoint) {
          maxDefinedWidth = 1100;
        } else {
          maxDefinedWidth = 768;
        }
      } else {
        maxDefinedWidth = 300;
        isMobile = true;
      }

      return Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          constraints: BoxConstraints(
            maxWidth: maxDefinedWidth,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HighlightedTexts(
                textPart1: WalktrhoughTexts.mainTitlePart1,
                textPart2: WalktrhoughTexts.mainTitlePart2,
                textEnphasis1: WalktrhoughTexts.mainTitleEnphasis,
                fontSize: isMobile ? 30 : 35,
                textAlign: TextAlign.center,
                color: colors[6],
              ),
              const SizedBox(height: 30),
              Text(WalktrhoughTexts.title1,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 20 : 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text(WalktrhoughTexts.topic1item1,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
              Text(WalktrhoughTexts.topic1item2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text(WalktrhoughTexts.title2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 20 : 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text(WalktrhoughTexts.topic2item1,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
              Text(WalktrhoughTexts.topic2item2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text(WalktrhoughTexts.title3,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 20 : 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text(WalktrhoughTexts.topic3item1,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
              Text(WalktrhoughTexts.topic3item2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ],
          ));
    });
  }
}
