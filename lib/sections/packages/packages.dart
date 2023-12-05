import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/constants/breakpoints.dart';
import 'package:landing_page/sections/packages/package.dart';

class Packages extends StatelessWidget {
  const Packages({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxDefinedWidth = (constraints.maxWidth > tabletBreakpoint
          ? 1100
          : (constraints.maxWidth > mobileBreakpoint)
              ? 768
              : 300);

      return Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          constraints: BoxConstraints(
            maxWidth: maxDefinedWidth,
          ),
          child: constraints.maxWidth > mobileBreakpoint
              ? Column(
                  children: [
                    Text('Nossos pacotes',
                        style: GoogleFonts.rubik(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 30),
                    Container(
                      // constraints: BoxConstraints(
                      //   maxWidth: maxDefinedWidth / 1.5,
                      // ),
                      child: Text(
                          'Nossos planos - Essencial, Avançado e Elite - são meticulosamente estruturados para'
                          'atender às necessidades de cada cliente, assegurando soluções personalizadas, inovação'
                          'constante e resultados excepcionais em cada etapa do caminho',
                          style: GoogleFonts.rubik(
                              fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                    const Package(
                        tittle: 'Formulário de Assessement',
                        text: 'Descrição do Produto',
                        price: 'R\$ <preço> / mês*',
                        features: ['Feature 1', 'Feature 2', 'Feature 3'],
                        width: 290,
                        isMobile: false),
                  ],
                )
              //#########
              // Mobile version
              //#########
              : Column(
                  children: [
                    Text('Nossos pacotes',
                        style: GoogleFonts.rubik(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 30),
                    Container(
                      // constraints: BoxConstraints(
                      //   maxWidth: maxDefinedWidth / 1.5,
                      // ),
                      child: Text(
                          'Nossos planos - Essencial, Avançado e Elite - são meticulosamente estruturados para'
                          'atender às necessidades de cada cliente, assegurando soluções personalizadas, inovação'
                          'constante e resultados excepcionais em cada etapa do caminho',
                          style: GoogleFonts.rubik(
                              fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center),
                    ),
                    const Package(
                        tittle: 'Formulário de Assessement',
                        text: 'Descrição do Produto',
                        price: 'R\$ <preço> / mês*',
                        features: ['Feature 1', 'Feature 2', 'Feature 3'],
                        width: 290,
                        isMobile: true),
                  ],
                ));
    });
  }
}
