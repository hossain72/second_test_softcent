import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'widgets/transaction_list_widget.dart';

import '../controllers/card_page_controller.dart';

import '../../../data/utils/hex_color.dart';

class CardPageView extends GetView<CardPageController> {
  final CardPageController controller = Get.put(CardPageController());

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#E5E5E5'),
        title: Text(
          'Card',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "DMSans",
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          FloatingActionButton.small(
            onPressed: null,
            child: Icon(Icons.add),
            backgroundColor: HexColor("#2DBC77"),
          )
        ],
      ),
      body: Container(
        height: height,
        width: width,
        color: HexColor('#E5E5E5'),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage("assets/images/png/card.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Recent Transaction",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.w500),
                ),
              ),
              TransactionListWidget(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
