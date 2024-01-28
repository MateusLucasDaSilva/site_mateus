import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/pages/home/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width / 2,
              color: const Color(0xffC4C4C4),
            ),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: ProfilePictureWidget(),
          )
        ],
      ),
    );
  }
}
