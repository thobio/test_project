import 'package:get/get.dart';

class HomeController extends GetxController {
  var focusedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onItemFocus(int indexInt) {
    focusedIndex.value = indexInt;
  }
}
