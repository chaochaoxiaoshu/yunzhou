import 'package:flutter/material.dart';

enum AccelerationMode {
  smart,
  auto,
  manual,
  global;

  String get title {
    Map<AccelerationMode, String> labels = {
      AccelerationMode.smart: '应用智能模式（推荐）',
      AccelerationMode.auto: '应用自动加速模式',
      AccelerationMode.manual: '应用手动模式',
      AccelerationMode.global: '全局模式',
    };
    return labels[this] as String;
  }

  String get description {
    Map<AccelerationMode, String> descriptions = {
      AccelerationMode.smart: '自动对国内APP及网页加速到中国线路使用',
      AccelerationMode.auto: '应用启动后将自动加速到中国线路使用',
      AccelerationMode.manual: '应用启动后将自动加速到中国线路使用',
      AccelerationMode.global: '所有网络数据都将加速到中国线路使用(Facebook及Google除外)',
    };
    return descriptions[this] as String;
  }

  ImageProvider get icon {
    Map<AccelerationMode, ImageProvider> icons = {
      AccelerationMode.smart: const AssetImage('assets/images/smart_mode.png'),
      AccelerationMode.auto: const AssetImage('assets/images/auto_mode.png'),
      AccelerationMode.manual:
          const AssetImage('assets/images/manual_mode.png'),
      AccelerationMode.global:
          const AssetImage('assets/images/global_mode.png'),
    };
    return icons[this] as ImageProvider;
  }
}
