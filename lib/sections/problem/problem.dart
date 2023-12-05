import 'package:flutter/material.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/problem/form_card.dart';
import 'package:landing_page/sections/problem/main_problem.dart';

class Problem extends StatelessWidget {
  const Problem({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth > mobileBreakpoint
            ? Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage('web/assets/images/background.jpg'),
                    alignment: Alignment.bottomCenter,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.dstATop,
                    ),
                  ),
                  color: Colors.black,
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MainProblem(
                        isMobile: false,
                      ),
                      FormCard(isMobile: false),
                    ]),
              )
            : Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage('web/assets/images/background.jpg'),
                    alignment: Alignment.bottomCenter,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3),
                      BlendMode.dstATop,
                    ),
                  ),
                  color: Colors.black,
                ),
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MainProblem(isMobile: true),
                      FormCard(isMobile: true),
                    ]),
              );
      },
    );
  }
}
