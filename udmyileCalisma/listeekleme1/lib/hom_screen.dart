import 'package:flutter/material.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({Key? key}) : super(key: key);

  @override
  _HomScreenState createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  late TextEditingController _harcamaMiktari;
  List<String> harcamalar = [];
  @override
  void initState() {
    super.initState();
    _harcamaMiktari = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Material App Bar'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) {
                  return Container(
                    height: 250,
                    child: Column(
                      children: [
                        SizedBox(),
                        TextField(
                          controller: _harcamaMiktari,
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration(labelText: "HARCAMA MİKTARI "),
                        ),
                        const SizedBox(),
                        const TextField(
                          decoration:
                              InputDecoration(labelText: "HARCAMA ADI "),
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  harcamalar.add(_harcamaMiktari.text);
                                });
                              },
                              child: const Text("Ekle"),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_month),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Text('grafik '),
          ),
          Expanded(
            child: Card(
              child: ListView(
                children: [
                  const ListTile(
                    title: Text("fatmma"),
                  ),
                  const ListTile(
                    title: Text("enes"),
                  ),
                  ListTile(
                    title: Text(_harcamaMiktari.text),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Buton"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
