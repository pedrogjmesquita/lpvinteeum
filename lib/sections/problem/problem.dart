import 'package:flutter/material.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/problem/form_card.dart';
import 'package:landing_page/sections/problem/main_problem.dart';

class Problem extends StatelessWidget {
  final VoidCallback scrollToPackages;

  const Problem({
    super.key,
    required this.scrollToPackages,
  });

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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const MainProblem(
                        isMobile: false,
                      ),
                      FormCard(
                          isMobile: false, scrollToPackages: scrollToPackages),
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const MainProblem(isMobile: true),
                      FormCard(
                          isMobile: true, scrollToPackages: scrollToPackages),
                    ]),
              );
      },
    );
  }
}
