import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainProblem extends StatelessWidget {
  const MainProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Problema',
                          style: GoogleFonts.rubik(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                      const SizedBox(height: 30),
                      Text('Frase de efeito',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.rubik().fontFamily,
                          ))
                    ]);
  }
}