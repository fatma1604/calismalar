import 'package:expens_list/data/data.dart';
import 'package:expens_list/model/expens_list.dart';
import 'package:expens_list/widgets/newexpens_page.dart';
import 'package:flutter/material.dart';

class Homscren extends StatefulWidget {
  const Homscren(this.expensList, {Key? key}) : super(key: key);
  final List<ExpensList> expensList;
  @override
  _HomscrennState createState() => _HomscrennState();
}

class _HomscrennState extends State<Homscren> {
  addExpense(ExpensList newexpenslist) {
    setState(() {
      expenslist.add(newexpenslist);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {
              showBottomSheet(
                  context: context,
                  builder: (ctx) {
                    return NewexpensPage(addExpense);
                  });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: expenslist.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("Name: ${expenslist[index].name}"),
                      subtitle: Text(
                          "Harcama: ${expenslist[index].harcama}, Date: ${expenslist[index].date}}"),
                      leading: Icon(CatgoryIcons[expenslist[index].catgory]),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
