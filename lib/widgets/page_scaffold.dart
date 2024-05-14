import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({
    super.key,
    required this.titleBar,
    required this.body,
    this.backgroundColor,
  });

  final Widget titleBar;
  final Widget body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: backgroundColor ?? const Color(0xFF050913),
        textStyle: const TextStyle(color: Colors.white),
        child: Stack(
          children: [
            // Positioned.fill(
            //   child: Image.asset(
            //     'assets/images/page_bg.png',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Column(
              children: [
                titleBar,
                Expanded(
                  child: body,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
