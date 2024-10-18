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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  ScrollController controller = ScrollController();
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

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
            toolbarHeight: 0,
            bottom: TabBar(
              controller: tabController,
              indicator: const BoxDecoration(),
              tabs: [
                ListenableBuilder(
                  listenable: tabController!,
                  builder: (context, child) => ButtonTextWidget(
                    label: 'About me',
                    isActive: tabController!.index < 1,
                    onTap: () {
                      tabController!.animateTo(0);
                      controller.animateTo(curve: Curves.linear, duration: const Duration(milliseconds: 300), controller.position.minScrollExtent);
                    },
                  ),
                ),
                ListenableBuilder(
                    listenable: tabController!,
                    builder: (context, _) {
                      return ButtonTextWidget(
                        label: 'Skills',
                        isActive: tabController!.index >= 1 && tabController!.index < 2,
                        onTap: () {
                          tabController!.animateTo(1);
                          controller.animateTo(curve: Curves.linear, duration: const Duration(milliseconds: 300), controller.position.maxScrollExtent / 4 * 2);
                        },
                      );
                    }),
                ListenableBuilder(
                    listenable: tabController!,
                    builder: (context, _) {
                      return ButtonTextWidget(
                        label: 'Portfolio',
                        isActive: tabController!.index >= 2 && tabController!.index < 3,
                        onTap: () {
                          tabController!.animateTo(2);
                          controller.animateTo(curve: Curves.linear, duration: const Duration(milliseconds: 300), controller.position.maxScrollExtent / 4 * 3);
                        },
                      );
                    }),
                ListenableBuilder(
                    listenable: tabController!,
                    builder: (context, _) {
                      return ButtonTextWidget(
                        label: 'Contact-me',
                        isActive: tabController!.index >= 3 && tabController!.index <= 4,
                        onTap: () {
                          tabController!.animateTo(3);
                          controller.animateTo(curve: Curves.linear, duration: const Duration(milliseconds: 300), controller.position.maxScrollExtent);
                        },
                      );
                    }),
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
