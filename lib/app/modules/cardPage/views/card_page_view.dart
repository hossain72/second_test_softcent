import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'widgets/transaction_widget.dart';

import '../controllers/card_page_controller.dart';

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
        backgroundColor: Colors.white,
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
            backgroundColor: Colors.green.shade400,
          )
        ],
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
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
              Obx(() => ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.transactionList.length,
                  itemBuilder: (_, index) {
                    var transaction = controller.transactionList[index];
                    return Column(
                      children: [
                        TransactionWidget(
                          transaction: transaction,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        index != controller.transactionList.length - 1
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Divider(
                                  height: 1,
                                  thickness: 1.1,
                                ),
                              )
                            : Container()
                      ],
                    );
                  })),
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
