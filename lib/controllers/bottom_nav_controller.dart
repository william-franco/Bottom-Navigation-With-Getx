import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeTabIndex(int index) {
    currentIndex.value = index;
    update();
  }
}
