import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';

class MainProblem extends StatelessWidget {
  const MainProblem({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      constraints: const BoxConstraints(maxWidth: 300),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
                TextSpan(
                  text: "Descubra as ferramentas necessárias para ",
                  children: [
                    TextSpan(
                      text: "aumentar o lucro",
                      style: TextStyle(
                        color: colors[4],
                      ),
                    ),
                    const TextSpan(
                      text: " da sua empresa e se destacar no mercado!",
                    ),
                  ],
                ),
                style: GoogleFonts.rubik(
                  fontSize: isMobile ? 25 : 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            const SizedBox(height: 30),
            Text.rich(
              TextSpan(
                text: "Você está preparado para liderar na era da ",
                children: [
                  TextSpan(
                    text: "IA",
                    style: TextStyle(
                      color: colors[4], // Change the color here
                    ),
                  ),
                  const TextSpan(
                    text: "?",
                    style: TextStyle(
                      color: Color.fromRGBO(
                          255, 255, 255, 1), // Change the color here
                    ),
                  ),
                ],
              ),
              style: GoogleFonts.rubik(
                fontSize: isMobile ? 20 : 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}
