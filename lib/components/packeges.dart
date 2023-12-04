import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/breakpoints.dart';
import 'package:landing_page/subcomponents/package.dart';

class Packeges extends StatelessWidget {
  const Packeges({super.key});

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
          child: Column(
            children: [
              Text('Nossos pacotes',
                  style: GoogleFonts.rubik(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              Container(
                constraints: BoxConstraints(
                  maxWidth: maxDefinedWidth / 1.5,
                ),
                child: Text(
                    'Nossos planos - Essencial, Avançado e Elite - são meticulosamente estruturados para'
                    'atender às necessidades de cada cliente, assegurando soluções personalizadas, inovação'
                    'constante e resultados excepcionais em cada etapa do caminho',
                    style: GoogleFonts.rubik(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Package(
                      tittle: 'Formulário de Assessement',
                      text: 'Descrição do Produto',
                      price: 'R\$ <preço> / mês*',
                      features: const ['Feature 1', 'Feature 2', 'Feature 3'],
                      width: maxDefinedWidth / 3.5,
                    ),
                    // Package(
                    //   tittle: 'Avançado',
                    //   text: 'Eleve a experiência do cliente'
                    //       'com soluções interativas e suporte avançado',
                    //   price: 'R\$ 4.990,00 / mês*',
                    //   features: const [
                    //     'Tudo que o Essencial Oferece',
                    //     'Atendimento Assistido',
                    //     'Chatbots Interativos'
                    //   ],
                    //   width: maxDefinedWidth / 3.5,
                    // ),
                    // Package(
                    //   tittle: 'Elite',
                    //   text:
                    //       'Transformação total em Marketing, maximizando alcance'
                    //       'e inteligência estratégica',
                    //   price: 'Fale com a gente',
                    //   features: const [
                    //     'Tudo que o Avançado Oferece',
                    //     'Inbound & Outbound Marketing',
                    //     'Plataforma de BI'
                    //   ],
                    //   width: maxDefinedWidth / 3.5,
                    // ),
                  ]))
            ],
          ));
    });
  }
}
