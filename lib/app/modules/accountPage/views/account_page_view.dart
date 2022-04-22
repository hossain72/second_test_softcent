import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_page_controller.dart';

class AccountPageView extends GetView<AccountPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccountPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AccountPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
