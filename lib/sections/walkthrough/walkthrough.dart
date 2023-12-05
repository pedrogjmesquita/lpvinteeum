import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';

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
              Text('Passo a Passo',
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 35 : 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text('1. Compra do Questionário',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 25 : 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text('∙ Escolha o pacote que mais se adeque às suas necessidades',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
              Text('∙ Adquira acesso instantâneo ao questionário',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text('2. Responda às Perguntas',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 25 : 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text(
                  '∙ Responda às perguntas cuidadosamente projetadas para revelar oportunidades exclusivas',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text('3. Receba Seu Relatório Personalizado',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: isMobile ? 25 : 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Text('∙ Receba uma análise detalhada, com insights acionáveis',
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
