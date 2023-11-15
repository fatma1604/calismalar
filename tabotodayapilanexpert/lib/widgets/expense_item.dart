import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tabotodayapilanexpert/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expenseList, {Key? key}) : super(key: key);

  final Expense expenseList;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [Text(expenseList.name), 
      Row(children: [

        Text("TL ${expenseList.price.toStringAsFixed(2)}"),
        const Spacer(),//ortalama
        Text(DateFormat.yMEd().format(expenseList.date)) //todo format date
      ],)]),
    );
  }
}
//y=year
//M= month 
//m =minute
//H=24 lük saat sistemi
//h =12 saat sistemi
//d =day
//s=second