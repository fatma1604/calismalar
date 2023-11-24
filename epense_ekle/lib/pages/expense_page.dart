import 'package:epense_ekle/data/data.dart';
import 'package:epense_ekle/models/expense.dart';
import 'package:epense_ekle/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenesPage extends StatefulWidget {
  const ExpenesPage({Key? key}) : super(key: key);

  @override
  _ExpenesPageState createState() => _ExpenesPageState();
}

class _ExpenesPageState extends State<ExpenesPage> {
  Expense? _lastRemovedExpense;

  void _showUndoSnackbar(Expense expense, int index) {
    ScaffoldMessenger.of(context)
        .removeCurrentSnackBar(); // mevcut snackbar'ı kaldır
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Harcama silindi'),
        action: SnackBarAction(
          label: 'Geri Al',
          onPressed: () {
            setState(() {
              expenseList.insert(index, _lastRemovedExpense!);
              print("$index    +     $_lastRemovedExpense");
              _lastRemovedExpense = null; // _lastRemovedExpense'ı sıfırla
            });
          },
        ),
      ),
    );
  }

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
                  return Dismissible(
                    key: Key(expenseList[index].id),
                    onDismissed: (direction) {
                      setState(() {
                        _lastRemovedExpense = expenseList.removeAt(index);
                        print("$index");
                        _showUndoSnackbar(_lastRemovedExpense!, index);
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: expenseList[index].color,
                      child: ExpenseItem(expenseList[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
