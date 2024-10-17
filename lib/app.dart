import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_mateus/src/presentation/app/app_widget.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: theme,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const AppWidget(),
    );
  }

  TextStyle style = GoogleFonts.jacquesFrancois();

  TextTheme get theme => TextTheme(
        bodyMedium: style,
        bodyLarge: style,
        bodySmall: style,
        labelLarge: style,
        displayLarge: style,
        displayMedium: style,
        displaySmall: style,
        labelMedium: style,
        labelSmall: style,
        titleLarge: style,
        titleSmall: style,
        titleMedium: style,
        headlineLarge: style,
        headlineMedium: style,
        headlineSmall: style,
      );
}
