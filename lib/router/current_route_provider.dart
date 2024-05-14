import 'package:flutter/material.dart';

/// 一个功能类 Widget，将当前路由路径信息注入到 Widget 树中。
class CurrentRouteProvider extends InheritedWidget {
  const CurrentRouteProvider({
    super.key,
    required super.child,
    required this.currentRoutePath,
  });

  final String currentRoutePath;

  static CurrentRouteProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CurrentRouteProvider>();
  }

  @override
  bool updateShouldNotify(covariant CurrentRouteProvider oldWidget) {
    return oldWidget.currentRoutePath != currentRoutePath;
  }
}
