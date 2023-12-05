import 'package:flutter/material.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/consequences/consequences_card.dart';
import 'package:landing_page/sections/consequences/consequences_image_card.dart';

class Consequences extends StatelessWidget {
  const Consequences({super.key});

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
          child: (constraints.maxWidth > mobileBreakpoint)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      ConsequencesImageCard(constraints: constraints.maxWidth),
                      ConsequencesCard(constraints: constraints.maxWidth),
                    ])
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      ConsequencesImageCard(constraints: constraints.maxWidth),
                      ConsequencesCard(constraints: constraints.maxWidth),
                    ]));
    });
  }
}
