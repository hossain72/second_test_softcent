import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'transaction_widget.dart';

import '../../controllers/card_page_controller.dart';

class TransactionListWidget extends StatefulWidget {
  const TransactionListWidget({Key? key}) : super(key: key);

  @override
  _TransactionListWidgetState createState() => _TransactionListWidgetState();
}

class _TransactionListWidgetState extends State<TransactionListWidget> {
  final controller = Get.find<CardPageController>();
  late var selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.transactionList.length,
        itemBuilder: (_, index) {
          var transaction = controller.transactionList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              color: selectedIndex == index
                  ? Color.fromRGBO(45, 188, 119, 0.07)
                  : Colors.white,
              child: Column(
                children: [
                  TransactionWidget(
                    transaction: transaction,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  index != controller.transactionList.length - 1
                      ? Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Divider(
                            color: selectedIndex == index
                                ? Color.fromRGBO(45, 188, 119, 0.07)
                                : Colors.grey,
                            height: 1,
                            thickness: 1.1,
                          ),
                        )
                      : Container()
                ],
              ),
            ),
          );
        });
  }
}
