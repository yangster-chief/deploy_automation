import 'package:deploy_automation/src/configure/app_configure.dart';
import 'package:flutter/material.dart';

///
/// deploy_automation
/// File Name: setting_page
/// Created by sujangmac on 2022/11/17
///
/// Description:
///
class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Build Type: ${AppConfigure.buildType}',
            ),
            const SizedBox(
              height: 20,
            ),
            Text('API URL: ${AppConfigure.apiURL}'),
          ],
        ),
      ),
    );
  }
}
