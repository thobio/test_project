import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/custom_views/custom_appbar.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(
        height: 100,
        bigTitle: "Settings",
        isImageNeeded: false,
      ),
      body: Center(
        child: Text(
          'SettingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
