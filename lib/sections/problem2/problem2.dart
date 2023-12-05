import 'package:flutter/material.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/sections/consequences/highlighted_texts.dart';
import 'package:landing_page/sections/problem2/problem2_texts.dart';
import 'package:landing_page/sections/problem2/problem_carousel.dart';

class Problem2 extends StatelessWidget {
  const Problem2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = (constraints.maxWidth > tabletBreakpoint
          ? 1100
          : (constraints.maxWidth > mobileBreakpoint)
              ? 768
              : 300);

      return Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          constraints: BoxConstraints(
            maxWidth: maxDefinedWidth,
          ),
          child: constraints.maxWidth > mobileBreakpoint
              ? Row(children: [
                  Expanded(
                      child: HighlightedTexts(
                    textPart1: Problem2Texts.descriptionPart1,
                    textPart2: Problem2Texts.descriptionPart2,
                    textPart3: Problem2Texts.descriptionPart3,
                    textEnphasis1: Problem2Texts.descriptionEnphasis1,
                    textEnphasis2: Problem2Texts.descriptionEnphasis2,
                    color: colors[6],
                  )),
                  const Expanded(
                      child: ProblemCarousel(
                    isMobile: false,
                  )),
                ])
              : Column(
                  children: [
                    HighlightedTexts(
                      textPart1: Problem2Texts.descriptionPart1,
                      textPart2: Problem2Texts.descriptionPart2,
                      textPart3: Problem2Texts.descriptionPart3,
                      textEnphasis1: Problem2Texts.descriptionEnphasis1,
                      textEnphasis2: Problem2Texts.descriptionEnphasis2,
                      color: colors[6],
                      fontSize: 22,
                    ),
                    const SizedBox(height: 50),
                    const ProblemCarousel(
                      isMobile: true,
                    ),
                  ],
                ));
    });
  }
}
