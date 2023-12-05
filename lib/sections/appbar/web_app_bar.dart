import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: colors[5],
      title: Container(
        margin: const EdgeInsets.all(0),
        constraints: const BoxConstraints(maxWidth: 600),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              SizedBox(
                width: 100, // Set the desired width
                height: 100, // Set the desired height
                child: Image.asset('web/assets/images/vinte_e_um_logo.png'),
              ),
              Text('21.AI',
                  style: GoogleFonts.rubik(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: colors[4],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
