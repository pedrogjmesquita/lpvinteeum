import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';

class ConsequencesCard extends StatelessWidget {
  const ConsequencesCard({super.key, required this.constraints});

  final double constraints;
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: (constraints / 2) > 300 ? constraints / 2 : 300,
        ),
        padding: const EdgeInsets.all(30),
        child: constraints > tabletBreakpoint
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Consequências',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                  const SizedBox(height: 30),
                  Text('- Tópico 1',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                  Text('- Tópico 2',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                  Text('- Tópico 3',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Consequências',
                      style: GoogleFonts.rubik(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 30),
                  Text('- Tópico 1',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                  Text('- Tópico 2',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                  Text('- Tópico 3',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: GoogleFonts.rubik().fontFamily)),
                ],
              ));
  }
}
