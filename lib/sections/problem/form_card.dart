import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';

class FormCard extends StatelessWidget {
  const FormCard({super.key, required this.isMobile});

  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              constraints: BoxConstraints(
                maxWidth: isMobile ? 300 : 400,
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Preencha o nosso formulário para ver como nós podemos te ajudar!',
                    style: GoogleFonts.rubik(
                      fontSize: isMobile ? 25 : 30,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[0],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text('Formulário',
                          style: GoogleFonts.rubik(
                            fontSize: isMobile ? 25 : 30,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ))
        ]);
  }
}
