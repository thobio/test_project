import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/custom_views/custom_appbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarCustom(
          height: 100,
          smallTitle: "Hello,",
          bigTitle: "Jonathan!",
          isImageNeeded: true,
          imageURL: "./assets/images/profile.jpg",
        ),
        body: Center(
          child: Text("Heloooooo"),
        ));
  }
}
