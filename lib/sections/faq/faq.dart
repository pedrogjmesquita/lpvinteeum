import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/faq/faq_texts.dart';
import 'package:landing_page/sections/faq/question.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

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
              Text(
                FAQTexts.tittle,
                style: GoogleFonts.rubik(
                  fontSize: isMobile ? 30 : 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              Question(
                  question: FAQTexts.question1,
                  answer: FAQTexts.answer1,
                  isMobile: isMobile),
              const SizedBox(height: 30),
              Question(
                  question: FAQTexts.question2,
                  answer: FAQTexts.answer2,
                  isMobile: isMobile),
              const SizedBox(height: 30),
            ],
          ));
    });
  }
}
