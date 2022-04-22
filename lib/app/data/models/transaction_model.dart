import 'dart:convert';

TransactionModel transactionModelFromJson(String str) => TransactionModel.fromJson(json.decode(str));

String transactionModelToJson(TransactionModel data) => json.encode(data.toJson());

class TransactionModel {
  TransactionModel({
    this.success,
    this.data,
  });

  bool? success;
  Data? data;

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
    success: json["success"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "data": data!.toJson(),
  };
}

class Data {
  Data({
    this.transactions,
  });

  List<Transaction>? transactions;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    transactions: List<Transaction>.from(json["transactions"].map((x) => Transaction.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "transactions": List<dynamic>.from(transactions!.map((x) => x.toJson())),
  };
}

class Transaction {
  Transaction({
    this.transactionId,
    this.shopName,
    this.shopLogo,
    this.paymentType,
    this.timestamp,
    this.amountSend,
    this.amountRecieved,
  });

  String? transactionId;
  String? shopName;
  String? shopLogo;
  String? paymentType;
  String? timestamp;
  int? amountSend;
  int? amountRecieved;

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    transactionId: json["transaction_id"],
    shopName: json["shop_name"],
    shopLogo: json["shop_logo"],
    paymentType: json["payment_type"],
    timestamp: json["timestamp"],
    amountSend: json["amount_send"],
    amountRecieved: json["amount_recieved"],
  );

  Map<String, dynamic> toJson() => {
    "transaction_id": transactionId,
    "shop_name": shopName,
    "shop_logo": shopLogo,
    "payment_type": paymentType,
    "timestamp": timestamp,
    "amount_send": amountSend,
    "amount_recieved": amountRecieved,
  };
}
