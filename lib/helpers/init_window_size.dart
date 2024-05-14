import 'dart:io';
import 'dart:ui';

import 'package:window_manager/window_manager.dart';

void initWindowSize() async {
  await windowManager.ensureInitialized();
  // App 初始化时设置窗口大小约束。
  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    const windowSize = Size(1000, 625);
    WindowManager.instance.setMinimumSize(windowSize);
    WindowManager.instance.setMaximumSize(windowSize);
    WindowManager.instance.setSize(windowSize);
    WindowManager.instance.setMaximizable(false);
  }
}
