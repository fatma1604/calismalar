import 'package:epense_ekle/pages/expense_page.dart';
import 'package:epense_ekle/widgets/new_expens.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _updateExpenses() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 162, 190),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 169, 190),
        title: const Text(
          "ExpenseApp",
          style: TextStyle(
              color: Color.fromARGB(255, 81, 24, 24),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Color.fromARGB(255, 17, 48, 46)),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return NewExpense(onExpenseAdded: _updateExpenses);
                },
              );
            },
          ),
        ],
      ),
      body: ExpenesPage(),
    );
  }
}
