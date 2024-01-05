import 'package:flutter/material.dart';
import 'package:miniproje/data.dart';
import 'package:miniproje/model/list.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key, required this.categori}) : super(key: key);
  final Categori categori;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    List<Yemek> yemekler = yemekListesi
        .where((element) => element.id == widget.categori.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categori.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Harcama TextField

          // Yemek Listesi
          Expanded(
            child: ListView.builder(
              itemCount: yemekler.length,
              itemBuilder: (context, index) => ListTile(
                title: Text('Yemek Adı: ${yemekler[index].name}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ${yemekler[index].id.toString()}'),
                    Text('Malzemeler: ${yemekler[index].mazeme.join(', ')}'),
                    Text('Şef: ${yemekler[index].sef}'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
