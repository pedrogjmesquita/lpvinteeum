import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/sections/packages/assessement_package_texts.dart';

class Package extends StatelessWidget {
  final String text;
  final String tittle;
  final String price;
  final List<String> features;
  final double width;
  final bool isMobile;
  final String oldPrice;
  final String button;

  const Package(
      {super.key,
      required this.tittle,
      required this.text,
      required this.price,
      required this.features,
      required this.width,
      required this.isMobile,
      required this.oldPrice,
      required this.button});

  @override
  Widget build(BuildContext context) {
    final String finalFeatures = features.join('\n\n✅');
    final List<double> fontSizes =
        isMobile ? [20, 12, 20, 15] : [25, 15, 25, 20];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(112, 0, 0, 0),
            blurRadius: 20,
            offset: Offset(0, 5),
          )
        ],
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
          Text(oldPrice,
              style: GoogleFonts.rubik(
                decoration: TextDecoration.lineThrough,
                fontSize: fontSizes[2],
                color: colors[0],
                fontWeight: FontWeight.bold,
              )),
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
                  button,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
          const SizedBox(height: 30),
          Text(
            AssessementPackageTexts.disclaimer,
            style: GoogleFonts.rubik(
              fontSize: 12,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
