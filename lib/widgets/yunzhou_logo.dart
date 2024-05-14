import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class YunZhouLogo extends StatelessWidget {
  const YunZhouLogo({super.key, this.size = 32});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/svgs/logo.svg',
          width: size,
          height: size,
        ),
        const SizedBox(height: 10),
        const Text(
          '云舟加速器',
          style: TextStyle(
            fontSize: 14,
            height: 1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
