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
        maxWidth: (constraints / 3) > 250 ? constraints / 3 : 250,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(
          'https://images.pexels.com/photos/313690/pexels-photo-313690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        ),
      ),
    );
  }
}
