import 'package:flutter/material.dart';

class AccelerationRoute {
  const AccelerationRoute({
    required this.icon,
    this.title,
    this.from,
    this.to,
    required this.description,
    required this.subRouteCount,
    required this.configName,
  }) : assert(title != null || from != null && to != null);

  final ImageProvider icon;
  final String? title;
  final String? from;
  final String? to;
  final String description;
  final int subRouteCount;
  final String configName;

  static get accelerationRoutes {
    return [
      const AccelerationRoute(
        icon: AssetImage('assets/images/sg.png'),
        from: '新加坡',
        to: '中国大陆',
        description: '专为东南亚用户优化',
        subRouteCount: 3,
        configName: 'hk-fu_client',
      ),
      const AccelerationRoute(
        icon: AssetImage('assets/images/us.png'),
        from: '北美',
        to: '中国大陆',
        description: '专为北美用户优化',
        subRouteCount: 3,
        configName: 'vless_usa',
      )
    ];
  }

  Widget renderTitle(BuildContext context, {Color? color}) {
    final textTheme = Theme.of(context).textTheme;
    if (title != null) {
      return Text(
        title!,
        style: textTheme.bodyMedium!.copyWith(
          color: color ?? textTheme.bodyMedium!.color,
        ),
      );
    } else {
      return DefaultTextStyle(
        style: textTheme.bodyMedium!.copyWith(
          color: color ?? textTheme.bodyMedium!.color,
        ),
        child: Row(
          children: [
            Text(from!),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.arrow_right_alt_sharp,
                color: color ?? Colors.white,
              ),
            ),
            Text(to!)
          ],
        ),
      );
    }
  }
}
