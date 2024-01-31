import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/app/app_images_paths.dart';

class ProfilePictureWidget extends StatelessWidget {
  final double sizeHeight;
  final double sizeWidth;

  const ProfilePictureWidget({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: sizeHeight / 1.5),
      child: SizedBox(
        height: sizeHeight,
        width: sizeWidth,
        child: Image.asset(
          AppImagesPaths.euSerioCortado,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
