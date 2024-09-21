import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/shared/app/app_colors.dart';
import 'package:site_mateus/src/presentation/shared/app/app_extensions.dart';
import 'package:site_mateus/src/presentation/shared/ui/widgets/title_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.sizeOf(context).height;
    final sizeW = MediaQuery.sizeOf(context).width;
    return Container(
      height: sizeH,
      width: sizeW,
      color: AppColors.ligth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const TitleWidget(title: 'Contact-me'),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.sizeWPercent(.3)),
            child: const Text(
              'Para entrar em contado basta preencher o fomulário a baixo e reponderei o seu email, também respondo através das minhas redes sociais.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            '---- \\\\\\///----',
            style: context.text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 30,
          ),
          const InputWidget(
            label: 'INSIRA SEU NOME*',
          ),
          const SizedBox(
            height: 20,
          ),
          const InputWidget(
            label: 'INSIRA SEU EMAIL*',
          ),
          const SizedBox(
            height: 20,
          ),
          const InputWidget(
            label: 'NÚMERO DE TELEFONE',
          ),
          const SizedBox(
            height: 20,
          ),
          const InputWidget(
            label: 'SUA MENSAGEM*',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  final String label;
  const InputWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.sizeWPercent(.3)),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 3), left: BorderSide(width: 3)),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: label,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            hintStyle: context.text.labelMedium,
          ),
        ),
      ),
    );
  }
}
