import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';
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
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: NetworkImage(
        //         'https://www.techrepublic.com/wp-content/uploads/2023/05/tr5423-what-is-generative-ai.jpeg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: maxDefinedWidth,
          ),
          padding: const EdgeInsets.all(30),
          child: Text(
            'FRASE MOTIVACIONAL!!',
            style: GoogleFonts.rubik(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontStyle: FontStyle.italic),
          ),
        ),
      );
    });
  }
}
