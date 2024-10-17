import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/pages/profile/widgets/information_me_widget.dart';
import 'package:site_mateus/src/presentation/shared/app/app_colors.dart';

class WidgetClip extends StatelessWidget {
  const WidgetClip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _ClipCustom(),
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width / 1.8,
        color: AppColors.light,
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width / 8, top: 20),
            child: const InformationMeWidget(),
          ),
        ),
      ),
    );
  }
}

class _ClipCustom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final h = size.height;
    final w = size.width;
    path.lineTo(0, 0);
    path.lineTo(0, h);
    path.lineTo(w - 150, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
