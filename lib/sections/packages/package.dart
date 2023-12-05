import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';

class Package extends StatelessWidget {
  const Package(
      {super.key,
      required this.tittle,
      required this.text,
      required this.price,
      required this.features,
      required this.width,
      required this.isMobile});

  final String text;
  final String tittle;
  final String price;
  final List<String> features;
  final double width;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final String finalFeatures = features.join('\n\n✅');
    final List<double> fontSizes =
        isMobile ? [20, 15, 20, 15] : [25, 20, 25, 20];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      constraints: BoxConstraints(maxWidth: width, minHeight: 400),
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.all(30),
      child: Column(
        children: [
          Text(tittle,
              style: GoogleFonts.rubik(
                fontSize: fontSizes[0],
                color: colors[0],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 10),
          Text(text,
              style: GoogleFonts.rubik(
                fontSize: fontSizes[1],
                color: colors[0],
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 20),
          Text(price,
              style: GoogleFonts.rubik(
                fontSize: fontSizes[2],
                color: colors[0],
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(height: 20),
          Text('✅$finalFeatures',
              textAlign: TextAlign.left,
              style:
                  GoogleFonts.rubik(fontSize: fontSizes[3], color: colors[0])),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: colors[0],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Comprar',
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
