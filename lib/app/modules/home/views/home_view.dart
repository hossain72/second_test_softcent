import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/utils/hex_color.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#E5E5E5'),
      appBar: AppBar(
        elevation: 0,
        title: Text('Home', style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "DMSans",
            fontWeight: FontWeight.w500),),
        backgroundColor: HexColor('#E5E5E5'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
