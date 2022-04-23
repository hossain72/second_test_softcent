import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../home/views/home_view.dart';
import '../../cardPage/views/card_page_view.dart';
import '../../offerPage/views/offer_page_view.dart';
import '../../accountPage/views/account_page_view.dart';

class MainPageController extends GetxController {
  final bottomNavIndex = 0.obs;
  final autoSizeGroup = AutoSizeGroup();

  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.local_offer_outlined,
    Icons.credit_card_rounded,
    Icons.person_outline_outlined,
  ];

  final label = <String>["Home", "Offers", "Card", "Account"];

  final pageList = [
    HomeView(),
    OfferPageView(),
    CardPageView(),
    AccountPageView()
  ];

  changeIndex(int index) {
    bottomNavIndex.value = index;
    update();
  }
}
