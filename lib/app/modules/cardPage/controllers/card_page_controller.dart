import 'package:get/get.dart';
import 'package:second_test_softcent/app/modules/cardPage/providers/transaction_provider.dart';

import '../../../data/models/transaction_model.dart';

class CardPageController extends GetxController {
  final loading = false.obs;
  final transactionList = <Transaction>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await getTransactionList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  getTransactionList() async {
    try {
      loading(true);
      var transactions = await TransactionProvider().getTransactionList();
      if (transactions != null) {
        transactionList.clear();
        if (transactions.data.transactions.isNotEmpty) {
          transactionList.addAll(transactions.data.transactions);
          print(transactionList);
          update();
        }
      }
    } finally {
      loading(false);
      update();
    }
  }
}
