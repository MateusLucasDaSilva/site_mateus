import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/shared/ui/widgets/title_widget.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.sizeOf(context).height;
    final sizeW = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: sizeH,
      width: sizeW,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          TitleWidget(title: 'Skills'),
        ],
      ),
    );
  }
}
