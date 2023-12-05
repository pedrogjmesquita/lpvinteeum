import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/packages/assessement_package_texts.dart';
import 'package:landing_page/sections/packages/package.dart';
import 'package:landing_page/sections/packages/packages_texts.dart';

class Packages extends StatelessWidget {
  const Packages({super.key});

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
              ? Column(
                  children: [
                    Text(PackagesText.title,
                        style: GoogleFonts.rubik(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 30),
                    Text(PackagesText.subtitle,
                        style: GoogleFonts.rubik(
                            fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center),
                    const Package(
                        tittle: AssessementPackageTexts.title,
                        text: AssessementPackageTexts.description,
                        price: AssessementPackageTexts.price,
                        features: AssessementPackageTexts.features,
                        width: 290,
                        isMobile: false),
                  ],
                )
              //#########
              // Mobile version
              //#########
              : Column(
                  children: [
                    Text(PackagesText.title,
                        style: GoogleFonts.rubik(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 30),
                    Text(PackagesText.subtitle,
                        style: GoogleFonts.rubik(
                            fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center),
                    const Package(
                        tittle: AssessementPackageTexts.title,
                        text: AssessementPackageTexts.description,
                        price: AssessementPackageTexts.price,
                        features: AssessementPackageTexts.features,
                        width: 290,
                        isMobile: false),
                  ],
                ));
    });
  }
}
