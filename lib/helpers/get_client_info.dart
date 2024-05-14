import 'dart:io';

import 'package:network_info_plus/network_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:yunzhou_vpn_desktop/output/user.pb.dart';

Future<ClientInfo> getClientInfo() async {
  final productName = _getProductName();

  final [
    deviceFingerprint,
    cpuArchitecture,
    ip,
    kernelType,
    kernelVersion,
    userHomeDirectory,
  ] = await Future.wait([
    PlatformDeviceId.getDeviceId,
    _getCpuArchitecture(),
    NetworkInfo().getWifiIP(),
    _getKernelType(),
    _getKernelVersion(),
    _getUserHomeDirectory()
  ]);

  return ClientInfo(
    clientType: 1,
    deviceFingerprint: deviceFingerprint,
    cPUArchitecture: cpuArchitecture,
    iPs: ip,
    kernelType: kernelType,
    kernelVersion: kernelVersion,
    productName: productName,
    userHomeDirectory: userHomeDirectory,
  );
}

Future<String> _getCpuArchitecture() async {
  if (Platform.isMacOS) {
    final deviceInfo = await DeviceInfoPlugin().macOsInfo;
    return deviceInfo.arch;
  } else if (Platform.isWindows) {
    // final deviceInfo = await DeviceInfoPlugin().windowsInfo;
    return 'x86';
  }
  return 'unknown';
}

Future<String> _getKernelType() async {
  if (Platform.isMacOS) {
    ProcessResult results = await Process.run('uname', ['-s']); // Kernel type
    return results.stdout.trim() ?? 'unknown';
  } else if (Platform.isWindows) {
    return "Windows";
  }
  return 'unknown';
}

Future<String> _getKernelVersion() async {
  if (Platform.isMacOS) {
    ProcessResult results = await Process.run('uname', ['-r']);
    return results.stdout.trim() ?? 'unknown';
  } else if (Platform.isWindows) {
    ProcessResult results = await Process.run('ver', []);
    return results.stdout.trim() ?? 'unknown';
  }
  return 'unknown';
}

String _getProductName() {
  if (Platform.isMacOS) {
    return 'macOS';
  } else if (Platform.isWindows) {
    return 'Windows';
  }
  return 'unknown';
}

Future<String> _getUserHomeDirectory() async {
  final directory = await getApplicationSupportDirectory();
  return directory.uri.path;
}
