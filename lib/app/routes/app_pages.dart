import 'package:get/get.dart';

import 'package:second_test_softcent/app/modules/accountPage/bindings/account_page_binding.dart';
import 'package:second_test_softcent/app/modules/accountPage/views/account_page_view.dart';
import 'package:second_test_softcent/app/modules/cardPage/bindings/card_page_binding.dart';
import 'package:second_test_softcent/app/modules/cardPage/views/card_page_view.dart';
import 'package:second_test_softcent/app/modules/home/bindings/home_binding.dart';
import 'package:second_test_softcent/app/modules/home/views/home_view.dart';
import 'package:second_test_softcent/app/modules/mainPage/bindings/main_page_binding.dart';
import 'package:second_test_softcent/app/modules/mainPage/views/main_page_view.dart';
import 'package:second_test_softcent/app/modules/offerPage/bindings/offer_page_binding.dart';
import 'package:second_test_softcent/app/modules/offerPage/views/offer_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CARD_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_PAGE,
      page: () => OfferPageView(),
      binding: OfferPageBinding(),
    ),
    GetPage(
      name: _Paths.CARD_PAGE,
      page: () => CardPageView(),
      binding: CardPageBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_PAGE,
      page: () => AccountPageView(),
      binding: AccountPageBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () => MainPageView(),
      binding: MainPageBinding(),
    ),
  ];
}
