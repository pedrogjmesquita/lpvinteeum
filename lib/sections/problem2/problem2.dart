import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';
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
                      child: Text('Problema\nAmplificado',
                          style: GoogleFonts.rubik(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center)),
                  const Expanded(
                      child: ProblemCarousel(
                    isMobile: false,
                  )),
                ])
              : Column(
                  children: [
                    Text('Problema\nAmplificado',
                        style: GoogleFonts.rubik(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 30),
                    const ProblemCarousel(
                      isMobile: true,
                    ),
                  ],
                ));
    });
  }
}
