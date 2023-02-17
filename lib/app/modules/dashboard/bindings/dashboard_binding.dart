import 'package:get/get.dart';
import 'package:test_project/app/modules/earning/controllers/earning_controller.dart';
import 'package:test_project/app/modules/home/controllers/home_controller.dart';
import 'package:test_project/app/modules/message/controllers/message_controller.dart';
import 'package:test_project/app/modules/setting/controllers/setting_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<EarningController>(
      () => EarningController(),
    );
    Get.lazyPut<MessageController>(
      () => MessageController(),
    );
    Get.lazyPut<SettingController>(
      () => SettingController(),
    );
  }
}
