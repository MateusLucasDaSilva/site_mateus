import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_mateus/src/presentation/app/app_icons_paths.dart';
import 'package:site_mateus/src/presentation/app/app_images_paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            InitialPage(),
            InitialPage(),
          ],
        ),
      ),
    );
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImagesPaths.background),
          fit: BoxFit.cover,
        ),
      ),
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfilePictureWidget(),
              Text(
                'Mateus Lucas',
                style: GoogleFonts.getFont('Instrument Serif')
                    .copyWith(color: Colors.white, fontSize: 50),
              ),
              Text(
                'Desenvolvedor Flutter',
                style: GoogleFonts.getFont('Instrument Serif')
                    .copyWith(color: Colors.white, fontSize: 18),
              ),
              Row(
                children: AppIconsPaths.allIcons
                    .map(
                      (e) => Container(
                        padding: const EdgeInsets.all(5),
                        height: 45,
                        width: 45,
                        child: Image.asset(
                          e,
                          fit: BoxFit.fill,
                          height: 600,
                          width: 600,
                          color: Colors.white,
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff505050),
              Color(0xff1b1b1b),
            ],
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: Image.asset(
            AppImagesPaths.mateusSemFundo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
