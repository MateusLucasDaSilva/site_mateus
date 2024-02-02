import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/pages/about/about_page.dart';
import 'package:site_mateus/src/presentation/pages/contact/contact_page.dart';
import 'package:site_mateus/src/presentation/pages/portfolio/portfolio_page.dart';
import 'package:site_mateus/src/presentation/pages/profile/profile_page.dart';
import 'package:site_mateus/src/presentation/pages/skills/skills_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scroll = ScrollController();

  void _changeScroll(double percent) {
    final position = percent * _scroll.position.maxScrollExtent;

    _scroll.animateTo(position,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceIn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black87,
          body: SingleChildScrollView(
            controller: _scroll,
            child: const Column(
              children: [
                ProfilePage(),
                AboutPage(),
                SkillsPage(),
                PortfolioPage(),
                ContactPage(),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: RotatedBox(
              quarterTurns: 1,
              child: Slider(
                value: 0.01,
                onChanged: _changeScroll,
              ),
            ),
          ),
        )
      ],
    );
  }
}
