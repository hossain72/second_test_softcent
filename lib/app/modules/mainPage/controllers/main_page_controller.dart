import 'package:get/get.dart';

class MainPageController extends GetxController {

  var bottomNavIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  changeIndex(int index){
    bottomNavIndex.value = index;
    update();
  }

}
