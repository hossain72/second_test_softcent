import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import '../controllers/main_page_controller.dart';

import '../../../data/utils/hex_color.dart';

class MainPageView extends GetView<MainPageController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.pageList[controller.bottomNavIndex.value],
          floatingActionButton: FloatingActionButton(
            elevation: 8,
            backgroundColor: HexColor('#2DBC77'),
            child: Icon(
              Icons.document_scanner_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
            itemCount: controller.iconList.length,
            tabBuilder: (int index, bool isActive) {
              final color = isActive ? HexColor('#2DBC77') : Colors.grey;
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    controller.iconList[index],
                    size: 24,
                    color: color,
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: AutoSizeText(
                      controller.label[index],
                      maxLines: 1,
                      style: TextStyle(
                          color: color,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                      group: controller.autoSizeGroup,
                    ),
                  )
                ],
              );
            },
            height: 77,
            backgroundColor: Colors.white,
            activeIndex: controller.bottomNavIndex.value,
            elevation: 5,
            notchSmoothness: NotchSmoothness.softEdge,
            gapLocation: GapLocation.center,
            onTap: (index) => controller.changeIndex(index),
          ),
        ));
  }
}
