import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/home/controllers/home_controller.dart';

class SearchWiget extends GetView<HomeController> {
  const SearchWiget({
    super.key,
    required this.controller,
  });

  @override
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color(0xFFE0EAF6),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(children: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search ....",
                border: InputBorder.none,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
