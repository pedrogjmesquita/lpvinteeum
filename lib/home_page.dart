import 'package:flutter/material.dart';
import 'package:landing_page/colors.dart';
import 'package:landing_page/components/consequences.dart';
import 'package:landing_page/components/faq.dart';
import 'package:landing_page/components/header.dart';
import 'package:landing_page/components/problem.dart';
import 'package:landing_page/components/problem2.dart';
import 'package:landing_page/components/motivacional_card.dart';
import 'package:landing_page/components/packeges.dart';
import 'package:landing_page/components/walkthrough.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Header(),
            Problem(),
            SizedBox(height: 30),
            Consequences(),
            SizedBox(height: 30),
            Problem2(),
            SizedBox(height: 30),
            MotivacionalCard(),
            SizedBox(height: 30),
            Packeges(),
            SizedBox(height: 30),
            Walkthrough(),
            SizedBox(height: 30),
            FAQ(),
          ],
        ),
      ),
    ));
  }
}
