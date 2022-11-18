import 'package:deploy_automation/src/page/setting_page.dart';
import 'package:flutter/material.dart';

///
/// deploy_automation
/// File Name: app_configure
/// Created by sujangmac on 2022/11/17
///
/// Description: 앱의 [buildType]과 [apiURL]을 설정함.
///
enum BuildType { develop, product }

class AppConfigure {
  static AppConfigure? _instance;

  static AppConfigure get instance => _instance!;

  final BuildType _buildType;

  static BuildType get buildType => _instance!._buildType;

  static String get apiURL {
    switch (_instance?._buildType) {
      case BuildType.develop:
        return 'https://devapi.foo.bar';
      case BuildType.product:
        return 'https://api.foo.bar';
      default:
        return 'https://api.foo.bar';
    }
  }

  AppConfigure._internal(this._buildType);

  factory AppConfigure.newInstance(BuildType buildType) {
    _instance ??= AppConfigure._internal(buildType);
    return _instance!;
  }

  void run() {
    runApp(
      const MaterialApp(home: SettingPage()),
    );
  }
}
