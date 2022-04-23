import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils/hex_color.dart';
import '../controllers/account_page_controller.dart';

class AccountPageView extends GetView<AccountPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#E5E5E5'),
      appBar: AppBar(
        elevation: 0,
        title: Text('Account', style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: HexColor('#E5E5E5'),
      ),
      body: Center(
        child: Text(
          'Account Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
