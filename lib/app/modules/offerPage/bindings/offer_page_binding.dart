import 'package:get/get.dart';

import '../controllers/offer_page_controller.dart';

class OfferPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferPageController>(
      () => OfferPageController(),
    );
  }
}
