import 'package:flutter/material.dart';

class MyCheckbox extends StatelessWidget {
  const MyCheckbox({
    super.key,
    required this.checked,
  });

  final bool checked;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      height: 16,
      child: Material(
        shape: CircleBorder(
          side: BorderSide(
            width: 2,
            color: checked
                ? const Color(0xFF42FBF5)
                : Colors.black.withOpacity(0.2),
          ),
        ),
        type: MaterialType.button,
        color: checked ? const Color(0xFF42FBF5) : Colors.transparent,
        child: checked
            ? const Center(
                child: Icon(
                  Icons.check,
                  size: 12,
                  color: Colors.black,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
