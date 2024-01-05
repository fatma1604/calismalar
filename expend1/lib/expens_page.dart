import 'package:expend1/data/data.dart';
import 'package:flutter/material.dart';

class ExpensPage extends StatefulWidget {
  final ExpenseData expenseData;

  const ExpensPage({Key? key, required this.expenseData}) : super(key: key);

  @override
  _ExpensPageState createState() => _ExpensPageState();
}

class _ExpensPageState extends State<ExpensPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.expenseData.expenses.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.call_missed_outgoing_rounded,
                    color: Colors.red[700],
                    size: 30,
                  ),
                  title: Text(
                    widget.expenseData.expenses[index].name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.expenseData.expenses[index].price.toString(),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Icon(
                        Icons.currency_lira_rounded,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
