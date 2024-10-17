import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/shared/app/app_extensions.dart';
import 'package:site_mateus/src/presentation/shared/ui/extensions/build_context_extension.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: context.sizeWPercent(.2),
      ),
      decoration: BoxDecoration(border: Border.all(width: 8, color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: context.textTheme.titleLarge?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
