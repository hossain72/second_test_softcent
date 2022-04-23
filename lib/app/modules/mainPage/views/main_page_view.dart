import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:second_test_softcent/app/modules/accountPage/views/account_page_view.dart';
import 'package:second_test_softcent/app/modules/cardPage/views/card_page_view.dart';
import 'package:second_test_softcent/app/modules/home/views/home_view.dart';
import 'package:second_test_softcent/app/modules/offerPage/views/offer_page_view.dart';

import '../controllers/main_page_controller.dart';
import 'widgets/navigation_screen.dart';

class MainPageView extends GetView<MainPageController> {
  final autoSizeGroup = AutoSizeGroup();
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.local_offer_outlined,
    Icons.credit_card_rounded,
    Icons.person_outline_outlined,
  ];

  final label = <String>["Home", "Offers", "Card", "Account"];

  final widget = [
    HomeView(),
    OfferPageView(),
    CardPageView(),
    AccountPageView()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: widget[controller.bottomNavIndex.value],
          floatingActionButton: FloatingActionButton(
            elevation: 8,
            backgroundColor: Colors.green.shade400,
            child: Icon(
              Icons.document_scanner_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? HexColor('#FFA400') : Colors.grey;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AutoSizeText(
                      label[index],
                      maxLines: 1,
                      style: TextStyle(color: color),
                      group: autoSizeGroup,
                    ),
                  )
                ],
              );
            },
            backgroundColor: Colors.white,
            activeIndex: controller.bottomNavIndex.value,
            //splashColor: HexColor('#FFA400'),
            elevation: 5,
            //splashSpeedInMilliseconds: 300,
            notchSmoothness: NotchSmoothness.softEdge,
            gapLocation: GapLocation.center,
            onTap: (index) => controller.changeIndex(index),
          ),
        ));
  }
}
