import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/pages/about/about_page.dart';
import 'package:site_mateus/src/presentation/pages/contact/contact_page.dart';
import 'package:site_mateus/src/presentation/pages/portfolio/portfolio_page.dart';
import 'package:site_mateus/src/presentation/pages/profile/profile_page.dart';
import 'package:site_mateus/src/presentation/pages/profile/widgets/button_text_widget.dart';
import 'package:site_mateus/src/presentation/pages/skills/skills_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonTextWidget(label: 'About me'),
                      ButtonTextWidget(label: 'Skills'),
                      ButtonTextWidget(label: 'Portfolio'),
                      ButtonTextWidget(label: 'Contact-me', isActive: true),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                ProfilePage(),
                AboutPage(),
                SkillsPage(),
                PortfolioPage(),
                ContactPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
