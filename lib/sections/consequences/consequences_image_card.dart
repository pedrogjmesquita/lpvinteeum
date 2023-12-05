import 'package:flutter/material.dart';

class ConsequencesImageCard extends StatelessWidget {
  const ConsequencesImageCard({
    super.key,
    required this.constraints,
  });

  final double constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: (constraints / 3) > 250
            ? (constraints / 3) < 400
                ? constraints / 3.2
                : 400
            : 250,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(
          'https://media.discordapp.net/attachments/1176171035683463209/1181744143928660079/AIimghelp.webp?ex=65822bff&is=656fb6ff&hm=a736f1fdca9faa33e6e054454120c8889b5e00a8eee2b7a2dfc28ed0817dc100&=&format=webp&width=745&height=559',
        ),
      ),
    );
  }
}
