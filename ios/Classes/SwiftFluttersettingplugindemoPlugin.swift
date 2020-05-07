import Flutter
import UIKit

public class SwiftFluttersettingplugindemoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "fluttersettingplugindemo", binaryMessenger: registrar.messenger())
    let instance = SwiftFluttersettingplugindemoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
