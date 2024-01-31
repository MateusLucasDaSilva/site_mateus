import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/pages/profile/widgets/button_text_widget.dart';
import 'package:site_mateus/src/presentation/pages/profile/widgets/clip_widget.dart';
import 'package:site_mateus/src/presentation/pages/profile/widgets/profile_picture_wdget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.sizeOf(context).height;
    final sizeW = MediaQuery.sizeOf(context).width;
    return Container(
      color: Colors.black,
      height: sizeH,
      width: sizeW,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: WidgetClip(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ProfilePictureWidget(
              sizeWidth: sizeW,
              sizeHeight: sizeH / 1.2,
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonTextWidget(label: 'About me'),
                      SizedBox(width: 30),
                      ButtonTextWidget(label: 'Skills'),
                      SizedBox(width: 30),
                      ButtonTextWidget(label: 'Portfolio'),
                      SizedBox(width: 30),
                      ButtonTextWidget(label: 'Contact-me', isActive: true),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
