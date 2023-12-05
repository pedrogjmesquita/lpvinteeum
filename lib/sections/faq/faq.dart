import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
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
          children: [
            Text('Perguntas Frequentes',
                style: GoogleFonts.rubik(
                  fontSize: isMobile ? 35 : 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            const SizedBox(height: 30),
            isMobile
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Question(question: 'Pergunta 1', answer: 'Resposta 1'),
                      Question(question: 'Pergunta 2', answer: 'Resposta 2'),
                      Question(question: 'Pergunta 3', answer: 'Resposta 3'),
                      Question(question: 'Pergunta 4', answer: 'Resposta 4'),
                      Question(question: 'Pergunta 5', answer: 'Resposta 5'),
                      Question(question: 'Pergunta 6', answer: 'Resposta 6'),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Question(
                              question: 'Pergunta 1', answer: 'Resposta 1'),
                          Question(
                              question: 'Pergunta 2', answer: 'Resposta 2'),
                          Question(
                              question: 'Pergunta 3', answer: 'Resposta 3'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Question(
                              question: 'Pergunta 4', answer: 'Resposta 4'),
                          Question(
                              question: 'Pergunta 5', answer: 'Resposta 5'),
                          Question(
                              question: 'Pergunta 6', answer: 'Resposta 6'),
                        ],
                      ),
                    ],
                  )
          ],
        ),
      );
    });
  }
}
