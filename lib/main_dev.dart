import 'package:deploy_automation/src/configure/app_configure.dart';

///
/// deploy_automation
/// File Name: main_dev
/// Created by sujangmac on 2022/11/17
///
/// Description: [BuildType.develop] 앱의 진입지점
///
void main() => AppConfigure.newInstance(BuildType.develop).run();
