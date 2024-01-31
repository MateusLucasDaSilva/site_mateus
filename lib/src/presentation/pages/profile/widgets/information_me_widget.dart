import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/app/app_icons_paths.dart';
import 'package:site_mateus/src/presentation/shared/ui/extensions/build_context_extension.dart';

class InformationMeWidget extends StatelessWidget {
  const InformationMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: Image.asset(AppIconsPaths.logo),
        ),
        const SizedBox(
          height: 200,
        ),
        Text(
          'Hi, I am',
          style: context.textTheme.headlineLarge
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Mateus Lucas',
          style: context.textTheme.headlineLarge
              ?.copyWith(fontWeight: FontWeight.w900),
        ),
        Text(
          'Mobile Developer Android/Ios',
          style: context.textTheme.bodyMedium?.copyWith(
            color: const Color(0xff909090),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Row(
          children: [
            ButtonIconWidget(pathIcon: AppIconsPaths.gitHub),
            SizedBox(width: 20),
            ButtonIconWidget(pathIcon: AppIconsPaths.linkedin),
            SizedBox(width: 20),
            ButtonIconWidget(pathIcon: AppIconsPaths.whatsapp),
            SizedBox(width: 20),
          ],
        )
      ],
    );
  }
}

class ButtonIconWidget extends StatelessWidget {
  final String pathIcon;
  const ButtonIconWidget({
    super.key,
    required this.pathIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xffc4c4c4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Image.asset(pathIcon),
    );
  }
}
