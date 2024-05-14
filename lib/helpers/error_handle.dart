import 'package:flutter/material.dart';

void showErrorMessage(BuildContext context, {required String errorMsg}) {
  final textTheme = Theme.of(context).textTheme;
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 48,
          ),
          child: Text(
            errorMsg,
            style: textTheme.bodyMedium!.copyWith(
              color: Colors.black,
            ),
          ),
        ),
      );
    },
  );
}
