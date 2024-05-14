import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class XrayProvider {
  XrayProvider._internal();

  static final _shared = XrayProvider._internal();
  static XrayProvider get shared => _shared;

  Process? _xrayProcess;

  Future<void> startService({required String configName}) async {
    if (Platform.isMacOS) {
      await _startServiceOnMacOS(configName);
    } else if (Platform.isWindows) {
      await _startServiceOnWindows(configName);
    }
  }

  Future<void> _startServiceOnMacOS(String configName) async {
    final directory = await getApplicationSupportDirectory();
    final filePath = '${directory.path}/bin/xray_macos';

    print(filePath);

    try {
      _xrayProcess = await Process.start(
          '$filePath/xray', ['-c', '$filePath/$configName.json']);

      await Future.wait([
        Process.run(
          '/usr/sbin/networksetup',
          ['-setwebproxy', 'WI-FI', '127.0.0.1', '24511'],
        ),
        Process.run(
          '/usr/sbin/networksetup',
          ['-setsecurewebproxy', 'WI-FI', '127.0.0.1', '24511'],
        ),
        Process.run(
          '/usr/sbin/networksetup',
          ['-setsocksfirewallproxy', 'WI-FI', '127.0.0.1', '24512'],
        )
      ]);

      _xrayProcess!.stdout.transform(utf8.decoder).listen((data) {
        if (kDebugMode) {
          print('stdout: $data');
        }
      });

      _xrayProcess!.stderr.transform(utf8.decoder).listen((data) {
        if (kDebugMode) {
          print('stderr: $data');
        }
      });

      _xrayProcess!.exitCode.then((exitCode) {
        if (kDebugMode) {
          print('Process exited with code $exitCode');
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print('执行命令时发生错误: $e');
      }
    }
  }

  Future<void> _startServiceOnWindows(String configName) async {
    final directory = await getApplicationSupportDirectory();
    final filePath = '${directory.path}\\bin\\xray_windows';

    try {
      _xrayProcess = await Process.start(
          '$filePath\\xray.exe', ['-c', '$filePath\\$configName.json']);
      await Future.wait([
        Process.run('powershell', [
          'Set-ItemProperty -Path',
          r'"HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"',
          '-Name ProxyServer -Value 127.0.0.1:24511'
        ]),
        Process.run('powershell', [
          'Set-ItemProperty -Path',
          r'"HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"',
          '-Name ProxyOverride -Value '
        ]),
        Process.run('powershell', [
          'Set-ItemProperty -Path',
          r'"HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"',
          '-Name ProxyEnable -Value 1'
        ])
      ]);

      _xrayProcess!.stdout.transform(utf8.decoder).listen((data) {
        if (kDebugMode) {
          print('stdout: $data');
        }
      });

      _xrayProcess!.stderr.transform(utf8.decoder).listen((data) {
        if (kDebugMode) {
          print('stderr: $data');
        }
      });

      _xrayProcess!.exitCode.then((exitCode) {
        if (kDebugMode) {
          print('Process exited with code $exitCode');
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print('执行命令时发生错误: $e');
      }
    }
  }

  Future<void> endService() async {
    if (Platform.isMacOS) {
      await _endServiceOnMacOS();
    } else if (Platform.isWindows) {
      await _endServiceOnWindows();
    }
  }

  Future<void> _endServiceOnMacOS() async {
    await Future.wait([
      Process.run(
        '/usr/sbin/networksetup',
        ['-setwebproxystate', 'WI-FI', 'off'],
      ),
      Process.run(
        '/usr/sbin/networksetup',
        ['-setsecurewebproxystate', 'WI-FI', 'off'],
      ),
      Process.run(
        '/usr/sbin/networksetup',
        ['-setsocksfirewallproxystate', 'WI-FI', 'off'],
      )
    ]);

    await _killProcessOnMacOS();
  }

  Future<void> _endServiceOnWindows() async {
    await Process.run('powershell', [
      'Set-ItemProperty -Path',
      r'"HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"',
      '-Name ProxyEnable -Value 0'
    ]);
    await _killProcessOnWindows();
  }

  Future<void> _killProcessOnMacOS() async {
    final result = await Process.run('pgrep', ['-f', 'xray_macos/xray']);
    if (result.stdout.toString().isNotEmpty) {
      await Process.run('kill', [result.stdout.toString().trim()]);
    }
  }

  Future<void> _killProcessOnWindows() async {
    final result = await Process.run(
      'tasklist',
      ['/FI', 'IMAGENAME eq xray.exe'],
    );
    if (result.stdout.toString().contains('xray.exe')) {
      await Process.run('taskkill', ['/F', '/IM', 'xray.exe']);
    }
  }

  Future<void> changeService({required String configName}) async {
    if (Platform.isMacOS) {
      await _changeServiceOnMacOS(configName);
    } else {
      await _changeServiceOnWindows(configName);
    }
  }

  Future<void> _changeServiceOnMacOS(String configName) async {
    final directory = await getApplicationSupportDirectory();
    final filePath = '${directory.path}/bin/xray_macos';

    try {
      if (_xrayProcess == null) return;
      await _killProcessOnMacOS();
      _xrayProcess = await Process.start(
          '$filePath/xray', ['-c', '$filePath/$configName.json']);
    } catch (e) {
      if (kDebugMode) {
        print('执行命令时发生错误: $e');
      }
    }
  }

  Future<void> _changeServiceOnWindows(String configName) async {
    final directory = await getApplicationSupportDirectory();
    final filePath = '${directory.path}\\bin\\xray_windows';

    try {
      if (_xrayProcess == null) return;
      await _killProcessOnWindows();
      _xrayProcess = await Process.start(
          '$filePath\\xray.exe', ['-c', '$filePath\\$configName.json']);
    } catch (e) {
      if (kDebugMode) {
        print('执行命令时发生错误: $e');
      }
    }
  }
}
