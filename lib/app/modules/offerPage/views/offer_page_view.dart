import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils/hex_color.dart';
import '../controllers/offer_page_controller.dart';

class OfferPageView extends GetView<OfferPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E5E5E5'),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Offer Page',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "DMSans",
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: HexColor('#E5E5E5'),
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
