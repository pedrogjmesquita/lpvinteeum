import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';
import 'package:landing_page/subcomponents/problems.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

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
        child: Row(children: [
          Expanded(
              child: Text('Problema\nAmplificado',
                  style: GoogleFonts.rubik(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center)),
          Expanded(
              child: FlutterCarousel(
                  items: [
                Problems(
                    tittle: 'Problema 1',
                    text: loremIpsum(paragraphs: 1, words: 50)),
                Problems(
                    tittle: 'Problema 2',
                    text: loremIpsum(paragraphs: 1, words: 50)),
                Problems(
                    tittle: 'Problema 3',
                    text: loremIpsum(paragraphs: 1, words: 50)),
                Problems(
                    tittle: 'Problema 4',
                    text: loremIpsum(paragraphs: 1, words: 50)),
              ],
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 10),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ))),
        ]),
      );
    });
  }
}
