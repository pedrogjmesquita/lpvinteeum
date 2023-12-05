import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';
import 'package:landing_page/colors.dart';

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
          height: 400, // Set the desired height here
          decoration:  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage('web/assets/images/background.jpg'),
              alignment: Alignment.bottomCenter,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.25),
                BlendMode.dstATop,
            ),
            ),
          ),
         
          
      
          child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center, children: [
            Column(
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
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: maxDefinedWidth / 3,
                  ),
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
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
