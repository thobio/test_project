import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/custom_views/custom_appbar.dart';
import '../controllers/message_controller.dart';

class MessageView extends GetView<MessageController> {
  const MessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(
        height: 100,
        bigTitle: "Messages",
        isImageNeeded: false,
      ),
      body: Center(
        child: Text(
          'MessageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
