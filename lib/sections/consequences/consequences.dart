import 'package:flutter/material.dart';
import 'package:landing_page/breakpoints.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: maxDefinedWidth / 3,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://images.pexels.com/photos/313690/pexels-photo-313690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: maxDefinedWidth / 2,
            ),
            padding: const EdgeInsets.all(30),
            child: Column(
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
            ),
          ),
        ]),
      );
    });
  }
}
