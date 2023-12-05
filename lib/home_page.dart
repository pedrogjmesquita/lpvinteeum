import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/colors.dart';
import 'package:landing_page/sections/consequences/consequences.dart';
import 'package:landing_page/sections/faq/faq.dart';
import 'package:landing_page/sections/problem/problem.dart';
import 'package:landing_page/sections/problem2/problem2.dart';
import 'package:landing_page/sections/motivacional_card/motivacional_card.dart';
import 'package:landing_page/sections/packages/packages.dart';
import 'package:landing_page/sections/walkthrough/walkthrough.dart';
import 'package:landing_page/sections/appbar/web_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey assessemntKey = GlobalKey();

  Future scrollToPackages() async {
    await Scrollable.ensureVisible(assessemntKey.currentContext!,
        duration: const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 60), child: WebAppBar()),
        body: Container(
          decoration: BoxDecoration(
            // color: Colors.black,
            gradient: LinearGradient(
              colors: colors.sublist(1, 4),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Problem(scrollToPackages: scrollToPackages),
                const SizedBox(height: 30),
                const Consequences(),
                const SizedBox(height: 30),
                const Problem2(),
                const SizedBox(height: 30),
                const MotivacionalCard(),
                const SizedBox(height: 30),
                Packages(key: assessemntKey),
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
