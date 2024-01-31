import 'package:flutter/material.dart';

class ButtonTextWidget extends StatelessWidget {
  final String label;
  final bool isActive;

  const ButtonTextWidget({
    super.key,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            )
          : null,
      alignment: Alignment.center,
      child: Text(
        isActive ? label.toUpperCase() : label,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: isActive ? Colors.black : Colors.white,
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
