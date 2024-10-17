import 'package:flutter/material.dart';
import 'package:site_mateus/src/presentation/pages/contact/contact_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ContactPage(),
    );
  }
}
