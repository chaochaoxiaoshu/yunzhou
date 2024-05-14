import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.label,
  });

  final Widget label;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: const LinearGradient(
          colors: [Color(0xFF6A85F4), Color(0xFF42FBF5)],
        ),
      ),
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            Colors.transparent,
          ),
        ),
        child: label,
      ),
    );
  }
}
