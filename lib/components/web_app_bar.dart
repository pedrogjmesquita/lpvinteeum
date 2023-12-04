import 'package:flutter/material.dart';
import 'package:landing_page/colors.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: colors[1],
      title: Container(
        margin: const EdgeInsets.all(0),
        constraints: const BoxConstraints(maxWidth: 600),
        child: Image.network(
          'https://media.licdn.com/dms/image/D4E3DAQF7xSJ12TFs8w/image-scale_191_1128/0/1700256028798/vinte_e_um_cover?e=1702306800&v=beta&t=bNsrJwu0KOH17J_A79SGDQ2i5wwIkI4aL42Z7zFMCao',
        ),
      ),
    );
  }
}
