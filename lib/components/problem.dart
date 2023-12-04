import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';
import 'package:landing_page/colors.dart';
import 'package:landing_page/components/header.dart';

class Problem extends StatelessWidget {
  const Problem({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Column(children: [
              Text('Problema',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: GoogleFonts.rubik().fontFamily,
                  )),
              const SizedBox(height: 30),
              Text('Frase de efeito',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: GoogleFonts.rubik().fontFamily,
                  ))
            ]),
            Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: maxDefinedWidth / 3,
                  ),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                          'Preencha o nosso formulário para ver como nós podemos te ajudar!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: GoogleFonts.rubik().fontFamily,
                          )),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors[0],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text('Formulário'),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        );
      },
    );
  }
}
