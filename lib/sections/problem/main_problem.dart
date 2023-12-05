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
      constraints: BoxConstraints(maxWidth: isMobile ? 300 : 350),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
                TextSpan(
                  text:
                      "Desperte o poder da Inteligência Artificial e transforme seus leads em ",
                  children: [
                    TextSpan(
                      text: "vendas",
                      style: TextStyle(
                        color: colors[4],
                      ),
                    ),
                    const TextSpan(
                      text: "!",
                      style:
                          TextStyle(color: Colors.white // Change the color here
                              ),
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
                text: "Descubra como a ",
                children: [
                  TextSpan(
                    text: "IA",
                    style: TextStyle(
                      color: colors[4], // Change the color here
                    ),
                  ),
                  const TextSpan(
                    text: " pode impulsionar seu ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: "crescimento comercial",
                    style: TextStyle(
                      color: colors[4], // Change the color here
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
