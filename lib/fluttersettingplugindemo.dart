import 'dart:async';

import 'package:flutter/services.dart';

class Fluttersettingplugindemo {
  static const MethodChannel _channel =
      const MethodChannel('fluttersettingplugindemo');

  static Future<String> openPage(String pageName) async {
    final String version = await _channel.invokeMethod('openPage',pageName);
    return version;
  }
}
