import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/shared/app/app_colors.dart';
import 'package:site_mateus/src/presentation/shared/app/app_extensions.dart';
import 'package:site_mateus/src/presentation/shared/ui/widgets/title_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.sizeOf(context).height;
    final sizeW = MediaQuery.sizeOf(context).width;
    return Container(
      color: AppColors.ligth,
      height: sizeH,
      width: sizeW,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const TitleWidget(title: 'About me'),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.sizeWPercent(.2)),
            child: const Text(
              'Desenvolvedor Flutter em busca de oportunidades desafiadoras para expandir minhas habilidades técnicas e contribuir significativamente para projetos inovadores. Apaixonado por criar aplicativos móveis intuitivos e eficientes, estou comprometido com a aprendizagem contínua e o aprimoramento constante. Com um foco no futuro, meu objetivo é me tornar um especialista flutter, contribuindo para o crescimento de equipes dinâmicas e inovadoras, enquanto exploro novas tecnologias e aprimoro minhas habilidades de programação.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                color: Colors.black,
                width: 2,
              ),
              const SizedBox(width: 10),
              const Text('EXPLORE'),
              const SizedBox(width: 10),
              Container(
                height: 20,
                color: Colors.black,
                width: 2,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            '---- \\\\\\///----',
            style: context.text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
