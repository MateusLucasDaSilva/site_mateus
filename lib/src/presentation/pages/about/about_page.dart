import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/shared/app/app_colors.dart';
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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          TitleWidget(title: 'About me'),
        ],
      ),
    );
  }
}
