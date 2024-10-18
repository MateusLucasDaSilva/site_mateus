// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

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

  late Debounce debounceTab = Debounce(callback: debounceCallback, duration: 500);

  void debounceCallback() {
    final max = controller.position.maxScrollExtent;
    final position = controller.position.pixels;

    if ((max / position) >= 0.0 && (max / position) < 1.0) {
      tabController!.animateTo(0);
    }
    if ((max / position) >= 1.0 && (max / position) < 2.0) {
      tabController!.animateTo(1);
    }
    if ((max / position) >= 2.0 && (max / position) < 3.0) {
      tabController!.animateTo(2);
    }
    if ((max / position) >= 3.0 && (max / position) < 4.0) {
      tabController!.animateTo(3);
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    controller.addListener(() {
      debounceTab.call();
    });
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

class Debounce {
  final VoidCallback callback;
  final int duration;
  Debounce({
    required this.callback,
    required this.duration,
  });

  Timer? _timer;

  void call() {
    _timer?.cancel();

    _timer = Timer.periodic(
      Duration(milliseconds: duration),
      (timer) {
        callback.call();
      },
    );
  }
}
