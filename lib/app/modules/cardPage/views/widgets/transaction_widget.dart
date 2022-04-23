import 'package:flutter/material.dart';

import '../../../../data/utils/hex_color.dart';
import '../../../../data/models/transaction_model.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transaction;

  const TransactionWidget({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 20, // Image radius
              backgroundImage: NetworkImage(transaction.shopLogo.toString()),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            flex: 9,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transaction.shopName.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      transaction.timestamp.toString(),
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trans ID : ${transaction.transactionId}",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "- \u09F3 ${transaction.amountSend}",
                      style: TextStyle(
                          color: Colors.red.shade400,
                          fontSize: 16,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        transaction.paymentType.toString() == "Digital Payment"
                            ? ImageIcon(AssetImage(
                                "assets/images/png/digital_payment.png"))
                            : ImageIcon(AssetImage(
                                "assets/images/png/cash_payment.png")),
                        Text(
                          "${transaction.paymentType}",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 14,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      "+ \u09F3 ${transaction.amountRecieved}",
                      style: TextStyle(
                          color: HexColor("#2DBC77"),
                          fontSize: 16,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
