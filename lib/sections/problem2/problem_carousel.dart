import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:landing_page/sections/problem2/problems.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class ProblemCarousel extends StatelessWidget {
  const ProblemCarousel({super.key, required this.isMobile});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
        items: [
          Problems(
            tittle: 'Problema 1',
            text: loremIpsum(paragraphs: 1, words: 50),
            isMobile: isMobile,
          ),
          Problems(
            tittle: 'Problema 2',
            text: loremIpsum(paragraphs: 1, words: 50),
            isMobile: isMobile,
          ),
          Problems(
            tittle: 'Problema 3',
            text: loremIpsum(paragraphs: 1, words: 50),
            isMobile: isMobile,
          ),
          Problems(
            tittle: 'Problema 4',
            text: loremIpsum(paragraphs: 1, words: 50),
            isMobile: isMobile,
          ),
        ],
        options: CarouselOptions(
          enableInfiniteScroll: true,
          height: isMobile ? 500 : 400,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 10),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
