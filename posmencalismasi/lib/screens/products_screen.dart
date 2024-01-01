import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // bu tıkpı değişken gibi davranıyor

//bak burda bir paket yükledik http paketi
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  void getProducts() async {
    // bu tarz metolarvar get pus ne kulanıcaksan
    //get(url)
    //put(url)gibi metodlar var
    // uri istiyorr

    Uri ur1 = Uri.https("dummyjson.com", "products"); //http de ola bilirdi
    final response = await http.get(ur1);
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(itemBuilder: (ctx, index) => Text("ürün adı")),
    );
  }
}
