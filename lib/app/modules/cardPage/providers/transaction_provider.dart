import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/transaction_model.dart';

class TransactionProvider extends GetConnect {
  getTransactionList() async {
    final response = await http.get(
        Uri.parse('https://mocki.io/v1/4572d649-fda0-4c84-991d-08ba0961205d'));

    if (response.statusCode == 200) {
      var responseString = response.body;
      return transactionModelFromJson(responseString);
    }
  }
}
