import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/shared/ui/extensions/build_context_extension.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(width: 8, color: Colors.black)),
      child: Text(
        title.toUpperCase(),
        style: context.textTheme.titleLarge?.copyWith(
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
