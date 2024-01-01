import 'package:flutter/material.dart';
import 'package:tobotoexpens/data/data.dart';
import 'package:tobotoexpens/model/expens_list.dart';
import 'package:tobotoexpens/widgets/newexpens_page.dart';

class Homscrenn extends StatefulWidget {
  const Homscrenn(this.expensList, {Key? key}) : super(key: key);
  final List<ExpensList> expensList;
  @override
  _HomscrennState createState() => _HomscrennState();
}

class _HomscrennState extends State<Homscrenn> {
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
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Your Button'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
