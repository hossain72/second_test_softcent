import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_page_controller.dart';

class AccountPageView extends GetView<AccountPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: true,
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
