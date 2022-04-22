import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/card_page_controller.dart';

class CardPageView extends GetView<CardPageController> {
  final controller = Get.put(CardPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CardPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
