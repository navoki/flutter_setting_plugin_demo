import 'dart:async';

import 'package:flutter/services.dart';

class Fluttersettingplugindemo {
  static const MethodChannel _channel =
      const MethodChannel('fluttersettingplugindemo');

  static Future<bool> openPage(String pageName) async {
    final bool result = await _channel.invokeMethod('openPage',pageName);
    return result;
  }
}
