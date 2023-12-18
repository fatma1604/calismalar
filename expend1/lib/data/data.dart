import 'package:expend1/model/model.dart';
import 'package:flutter/services.dart';

class ExpenseData {
  List<Expense> expense = [
    Expense(name: "Kargo", price: 55, date: DateTime.now()),
    Expense(name: "Akşam yemeği", price: 360, date: DateTime.now()),
    Expense(name: "Benzin", price: 50, date: DateTime.now()),
    Expense(name: "Kitap alışverişi", price: 295, date: DateTime.now()),
    Expense(name: "Telefon faturası", price: 225, date: DateTime.now()),
    Expense(name: "Kahve", price: 60, date: DateTime.now()),
  ];
}
