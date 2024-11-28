import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  int get currentIndex => selectedIndex.value;
}
