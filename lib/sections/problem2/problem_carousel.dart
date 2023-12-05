import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:landing_page/sections/problem2/problems.dart';

class ProblemCarousel extends StatelessWidget {
  const ProblemCarousel({super.key, required this.isMobile});
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
        items: [
          Problems(
            tittle: 'Revelação de Oportunidades',
            text:
                'Identificação clara de áreas onde a implementação de IA pode gerar impacto imediato, impulsionando a eficiência e os resultados das estratégias de vendas.',
            isMobile: isMobile,
          ),
          Problems(
            tittle: 'Geração de Relatório Executivo',
            text:
                'Criação de um "one page report" revisado por executivo, condensando os insights e apontando as ações prioritárias.',
            isMobile: isMobile,
          ),
          Problems(
            tittle: 'Retorno em Curto Prazo',
            text:
                "Entrega dos resultados em apenas 2 dias úteis, permitindo uma rápida implementação das estratégias recomendadas",
            isMobile: isMobile,
          ),
        ],
        options: CarouselOptions(
          enableInfiniteScroll: true,
          height: isMobile ? 350 : 300,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 10),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
