import 'package:flutter/services.dart';

class SwiftBridge {
  static const _channel = MethodChannel('my_channel');

  static Future<String> test() async {
    return await _channel.invokeMethod('test');
  }
}
