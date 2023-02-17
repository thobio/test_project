import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_project/app/modules/earning/views/earning_view.dart';
import 'package:test_project/app/modules/home/views/home_view.dart';
import 'package:test_project/app/modules/message/views/message_view.dart';
import 'package:test_project/app/modules/setting/views/setting_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabBarCurrentIndex,
          children: const [
            HomeView(),
            EarningView(),
            MessageView(),
            SettingView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabBarCurrentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: ".",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_rounded),
              label: ".",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email_rounded),
              label: ".",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: ".",
            ),
          ],
          selectedItemColor: const Color(0xFF205AF1),
          unselectedItemColor: const Color(0xFFB6BED7),
          onTap: (indexInt) {
            controller.selectedTabIndex(indexInt);
          },
        ),
      );
    });
  }
}
