import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttersettingplugindemo/fluttersettingplugindemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';



  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> openSettingPage() async {
    bool isSettingOpen;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      isSettingOpen = await Fluttersettingplugindemo.openPage("SETTING");
    } on PlatformException {
      print('Failed to get platform version.');
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    print('Result= $isSettingOpen');

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              openSettingPage();

            },
            child: Text("Open Setting"),
          ),
        ),
      ),
    );
  }
}
