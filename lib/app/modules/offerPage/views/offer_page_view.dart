import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_page_controller.dart';

class OfferPageView extends GetView<OfferPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offer Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Offer Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
