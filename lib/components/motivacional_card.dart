import 'package:flutter/material.dart';
import 'package:landing_page/breakpoints.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class MotivacionalCard extends StatelessWidget {
  const MotivacionalCard({super.key});

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          child: Text(
            loremIpsum(paragraphs: 1, words: 100),
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
