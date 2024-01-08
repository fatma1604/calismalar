import 'package:flutter/material.dart';
import 'package:posmen_kitap/data.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:posmen_kitap/newpage.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var url = Uri.parse(
      "https://www.kitapyurdu.com/index.php?route=product/best_sellers&list_id=16");
  List<Kitap> kitaplar = [];
  bool isLoading = false; //yükleniyor anlamına geliyor

  Future getDate() async {
    setState(() {
      isLoading = true;
    });
    var res = await http.get(url);
    final body = res.body;
    final document = parser.parse(body);
    var response = document
        .getElementsByClassName("product-grid")[0]
        .getElementsByClassName("product-cr")
        .forEach((element) {
      setState(() {
        kitaplar.add(Kitap(
          image: element
              .children[3].children[0].children[0].children[0].attributes['src']
              .toString(),
          kitapAdi: element.children[4].text.toString(),
          yayinEvi: element.children[5].text.toString(),
          fiyat: element.children[9].children[0].text.toString(),
          yazar: element.children[7].text.toString(),
        ));
      });
    });
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitap"),
      ),
      body: Center(
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: kitaplar.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Newpage(
                    kitap: kitaplar[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(kitaplar[index].image),
                    Text(
                      "Kitap İsmi: ${kitaplar[index].kitapAdi}",
                      style: _style,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  final TextStyle _style = const TextStyle(color: Colors.black, fontSize: 15);
}
