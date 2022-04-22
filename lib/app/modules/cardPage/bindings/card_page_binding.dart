import 'package:get/get.dart';

import '../controllers/card_page_controller.dart';

class CardPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CardPageController>(
      () => CardPageController(),
    );
  }
}
