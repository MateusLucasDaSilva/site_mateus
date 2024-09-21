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
  ScrollController controller = ScrollController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        controller: controller,
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
                      const ButtonTextWidget(label: 'About me'),
                      const ButtonTextWidget(label: 'Skills'),
                      const ButtonTextWidget(label: 'Portfolio'),
                      ButtonTextWidget(
                        label: 'Contact-me',
                        isActive: true,
                        onTap: () => controller.jumpTo(controller.position.maxScrollExtent),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SliverList(
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
