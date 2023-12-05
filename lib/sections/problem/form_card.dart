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
                maxWidth: isMobile ? 300 : 350,
              ),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Faça parte da ",
                      children: [
                        TextSpan(
                          text: "revolução",
                          style: TextStyle(
                            color: colors[4], // Change the color here
                          ),
                        ),
                        const TextSpan(
                          text: " e reserve seu ",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "assessment ",
                          style: TextStyle(
                            color: colors[4], // Change the color here
                          ),
                        ),
                      ],
                    ),
                    style: GoogleFonts.rubik(
                      fontSize: isMobile ? 25 : 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    constraints: const BoxConstraints(minHeight: 100),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors[0],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        'Quero fazer parte da revolução',
                        style: GoogleFonts.rubik(
                          fontSize: isMobile ? 22 : 27,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ))
        ]);
  }
}
