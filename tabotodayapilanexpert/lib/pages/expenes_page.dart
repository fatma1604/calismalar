import 'package:flutter/material.dart';
import 'package:tabotodayapilanexpert/models/expense.dart';
import 'package:tabotodayapilanexpert/widgets/expense_item.dart';
//fdtful hızlıcaa kod

class ExpenesPage extends StatefulWidget {
  const ExpenesPage({Key? key}) : super(key: key);

  @override
  _ExpenesPageState createState() => _ExpenesPageState();
}

class _ExpenesPageState extends State<ExpenesPage> {
  List<Expense> expenseList = [
    Expense(
        name: "makarna",
        price: 80.55,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        name: "pilav",
        price: 70.77,
        date: DateTime.now(),
        category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("GRAFİK"),
            Expanded(
              child: ListView.builder(
                  itemCount: expenseList.length,
                  itemBuilder: (context, index) {
                    return ExpenseItem(expenseList[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
