import 'package:get/get.dart';

import '../providers/transaction_provider.dart';

import '../../../data/models/transaction_model.dart';

class CardPageController extends GetxController {
  final loading = false.obs;
  final transactionList = <Transaction>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await getTransactionList();
  }

  getTransactionList() async {
    try {
      loading(true);
      var transactions = await TransactionProvider().getTransactionList();
      if (transactions != null) {
        transactionList.clear();
        if (transactions.data.transactions.isNotEmpty) {
          transactionList.addAll(transactions.data.transactions);
          update();
        }
      }
    } finally {
      loading(false);
      update();
    }
  }
}
