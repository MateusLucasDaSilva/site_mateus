import 'package:flutter/material.dart';

extension AppContextExtension on BuildContext {
  double get sizeH => MediaQuery.sizeOf(this).height;
  double get sizeW => MediaQuery.sizeOf(this).width;

  double sizeHPercent(double percent) => sizeH * percent;
  double sizeWPercent(double percent) => sizeW * percent;

  TextTheme get text => Theme.of(this).textTheme;
}
