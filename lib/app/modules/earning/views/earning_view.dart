import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/custom_views/custom_appbar.dart';
import '../controllers/earning_controller.dart';

class EarningView extends GetView<EarningController> {
  const EarningView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(
        height: 100,
        bigTitle: "Earnings",
        isImageNeeded: false,
      ),
      body: Center(
        child: Text(
          'EarningView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
