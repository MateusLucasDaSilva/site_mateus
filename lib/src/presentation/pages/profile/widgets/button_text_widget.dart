import 'package:flutter/material.dart';

class ButtonTextWidget extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const ButtonTextWidget({
    super.key,
    required this.label,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 40,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          isActive ? label.toUpperCase() : label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: isActive ? Colors.black : Colors.white,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
    );
  }
}
