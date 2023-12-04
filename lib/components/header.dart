import 'package:flutter/material.dart';
import 'package:landing_page/breakpoints.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = (constraints.maxWidth > tabletBreakpoint
          ? 1100
          : (constraints.maxWidth > mobileBreakpoint)
              ? 768
              : 300);
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        constraints: BoxConstraints(
          maxWidth: maxDefinedWidth,
        ),
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 100,
          ),
          alignment: Alignment.topLeft,
          child: Image.network(
              'https://media.licdn.com/dms/image/D4E3DAQF7xSJ12TFs8w/image-scale_191_1128/0/1700256028798/vinte_e_um_cover?e=1702306800&v=beta&t=bNsrJwu0KOH17J_A79SGDQ2i5wwIkI4aL42Z7zFMCao'),
        ),
      );
    });
  }
}
