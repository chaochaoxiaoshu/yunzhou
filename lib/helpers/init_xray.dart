import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initXRay() async {
  if (Platform.isMacOS) {
    await _initXRayOnMacOS();
  } else if (Platform.isWindows) {
    await _initXRayOnWindows();
  }
}

Future<void> _initXRayOnMacOS() async {
  try {
    final directory = await getApplicationSupportDirectory();
    final filePath = '${directory.path}/bin/xray_macos';
    final fileDir = Directory(filePath);

    await fileDir.create(recursive: true);

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final files = manifestMap.keys
        .where((String key) => key.startsWith('assets/bin/xray_macos'))
        .toList();

    for (var file in files) {
      final byteData = await rootBundle.load(file);
      final buffer = byteData.buffer.asUint8List();
      final path = '$filePath/${file.split('/').last}';

      await File(path).writeAsBytes(buffer);
      await Process.run('chmod', ['+x', path]);
    }
  } catch (e) {
    rethrow;
  }
}

Future<void> _initXRayOnWindows() async {
  try {
    final directory = await getApplicationSupportDirectory();
    final filePath = '${directory.path}\\bin\\xray_windows';
    final fileDir = Directory(filePath);

    await fileDir.create(recursive: true);

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    final files = manifestMap.keys
        .where((String key) => key.startsWith('assets/bin/xray_windows'))
        .toList();

    for (var file in files) {
      final byteData = await rootBundle.load(file);
      final buffer = byteData.buffer.asUint8List();
      final path = '$filePath\\${file.split('/').last}';

      await File(path).writeAsBytes(buffer);
    }
  } catch (e) {
    rethrow;
  }
}
