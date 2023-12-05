import 'package:flutter/material.dart';
import 'package:landing_page/breakpoints.dart';
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
                height: 400, // Set the desired height here
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage('web/assets/images/background.jpg'),
                    alignment: Alignment.bottomCenter,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25),
                      BlendMode.dstATop,
                    ),
                  ),
                ),

                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const MainProblem(),
                      FormCard(constraints: constraints.maxWidth),
                    ]),
              )
            : Container(
                // height: 400, // Set the desired height here
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: const AssetImage('web/assets/images/background.jpg'),
                    alignment: Alignment.bottomCenter,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.25),
                      BlendMode.dstATop,
                    ),
                  ),
                ),

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const MainProblem(),
                      FormCard(constraints: constraints.maxWidth),
                    ]),
              );
      },
    );
  }
}
