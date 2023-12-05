import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/sections/consequences/consequences_texts.dart';
import 'package:landing_page/sections/consequences/highlighted_texts.dart';

class ConsequencesCard extends StatelessWidget {
  const ConsequencesCard(
      {super.key, required this.constraints, required this.isMobile});

  final double constraints;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: isMobile ? 300 : 420,
        ),
        padding: const EdgeInsets.all(30),
        child: constraints > tabletBreakpoint
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ConsequencesTexts.title,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                  const SizedBox(height: 30),
                  HighlightedTexts(
                    textPart1: ConsequencesTexts.topic1part1,
                    textPart2: ConsequencesTexts.topic1part2,
                    textEnphasis1: ConsequencesTexts.topic1enphasis,
                    color: colors[6],
                  ),
                  const SizedBox(height: 20),
                  HighlightedTexts(
                    textPart1: ConsequencesTexts.topic2part1,
                    textPart2: ConsequencesTexts.topic2part2,
                    textPart3: ConsequencesTexts.topic2part2,
                    textEnphasis1: ConsequencesTexts.topic2enphasis1,
                    textEnphasis2: ConsequencesTexts.topic2enphasis2,
                    color: colors[6],
                  ),
                  const SizedBox(height: 40),
                  HighlightedTexts(
                    textPart1: ConsequencesTexts.topic3part1,
                    textPart2: ConsequencesTexts.topic3part2,
                    textPart3: ConsequencesTexts.topic3part2,
                    textEnphasis1: ConsequencesTexts.topic3enphasis1,
                    textEnphasis2: ConsequencesTexts.topic3enphasis2,
                    color: colors[6],
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ConsequencesTexts.title,
                      style: GoogleFonts.rubik(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 30),
                  HighlightedTexts(
                    textPart1: ConsequencesTexts.topic1part1,
                    textPart2: ConsequencesTexts.topic1part2,
                    textEnphasis1: ConsequencesTexts.topic1enphasis,
                    color: colors[6],
                    fontSize: 25,
                  ),
                  const SizedBox(height: 20),
                  HighlightedTexts(
                    textPart1: ConsequencesTexts.topic2part1,
                    textPart2: ConsequencesTexts.topic2part2,
                    textPart3: ConsequencesTexts.topic2part2,
                    textEnphasis1: ConsequencesTexts.topic2enphasis1,
                    textEnphasis2: ConsequencesTexts.topic2enphasis2,
                    color: colors[6],
                    fontSize: 25,
                  ),
                  const SizedBox(height: 40),
                  HighlightedTexts(
                    textPart1: ConsequencesTexts.topic3part1,
                    textPart2: ConsequencesTexts.topic3part2,
                    textPart3: ConsequencesTexts.topic3part2,
                    textEnphasis1: ConsequencesTexts.topic3enphasis1,
                    textEnphasis2: ConsequencesTexts.topic3enphasis2,
                    color: colors[6],
                    fontSize: 25,
                  ),
                ],
              ));
  }
}
