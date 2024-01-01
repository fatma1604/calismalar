import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tobotoexpens/model/expens_list.dart';

class NewexpensPage extends StatefulWidget {
  const NewexpensPage(this.onAdd, {Key? key}) : super(key: key);
  final void Function(ExpensList expensList) onAdd;

  @override
  _NewexpensPageState createState() => _NewexpensPageState();
}

class _NewexpensPageState extends State<NewexpensPage> {
  var _harcamaAdiController = TextEditingController();
  var _harcamaMiktari = TextEditingController();
  Catgory _selectedCategory = Catgory.work;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: _harcamaAdiController,
              decoration: InputDecoration(labelText: "Harcama Adı"),
            ),
            TextField(
              controller: _harcamaMiktari,
              decoration: InputDecoration(labelText: "Harcama Miktarı"),
            ),
            Row(
              children: [
                DropdownButton(
                  value: _selectedCategory,
                  items: Catgory.values.map((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e.name),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value != null) _selectedCategory = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    ExpensList expensList = ExpensList(
                        name: _harcamaAdiController.text,
                        harcama: _harcamaMiktari.text,
                        date: DateTime.now(),
                        catgory: _selectedCategory);
                    widget.onAdd(expensList);
                  },
                  child: Text("Ekleme"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kapat"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
