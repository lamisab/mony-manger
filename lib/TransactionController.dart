import 'package:flutter/cupertino.dart';

class TransactionController with ChangeNotifier {

  List<TransactionModel?> transactionList = [];

  double totalIncome = 0.0;
  double totalExpense = 0.0;
  double total = 0.0;

  bool fetching = false;

  void fetchTransaction() async {
    fetching = true;
    transactionList = [];
    totalIncome = 0.0;
    totalExpense = 0.0;
    total = 0.0;


    transactionList.forEach((element) {
      if (element!.isIncome == 1) {
        totalIncome += double.parse(element.amount ?? "0.0");
      } else {
        totalExpense += double.parse(element.amount ?? "0.0");
      }
    });

    total = totalIncome - totalExpense;

    fetching = false;


  }
}
class TransactionModel {
  TransactionModel({
    required this.id,
    required this.title,
    required this.description,
    required this.amount,
    required this.isIncome,
    required this.category,
    required this.dateTime,
  });

  final int? id;
  final String? title;
  final String? description;
  final String? amount;
  final int? isIncome;
  final String? category;
  final String? dateTime;

  factory TransactionModel.fromMap(Map<String, dynamic> json) =>
      TransactionModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        amount: json["amount"],
        isIncome: json["isIncome"],
        category: json["category"],
        dateTime: json["dateTime"],
      );

  Map<String, dynamic> transactionToMap() => {
    "id": id,
    "title": title,
    "description": description,
    "amount": amount,
    "isIncome": isIncome,
    "category": category,
    "dateTime": dateTime,
  };
}

