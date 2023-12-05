import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/colors.dart';
import 'package:landing_page/sections/consequences/consequences.dart';
import 'package:landing_page/sections/faq/faq.dart';
import 'package:landing_page/sections/problem/problem.dart';
import 'package:landing_page/sections/problem2/problem2.dart';
import 'package:landing_page/sections/motivacional_card/motivacional_card.dart';
import 'package:landing_page/sections/packages/packages.dart';
import 'package:landing_page/sections/walkthrough/walkthrough.dart';
import 'package:landing_page/sections/appbar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 60), child: WebAppBar()),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Problem(),
                const SizedBox(height: 30),
                const Consequences(),
                const SizedBox(height: 30),
                const Problem2(),
                const SizedBox(height: 30),
                const MotivacionalCard(),
                const SizedBox(height: 30),
                const Packages(),
                const SizedBox(height: 30),
                const Walkthrough(),
                const SizedBox(height: 30),
                const FAQ(),
                const SizedBox(height: 30),
                Text(
                  'Copyright © 2023 21.AI Todos os direitos reservados',
                  style: GoogleFonts.rubik(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
