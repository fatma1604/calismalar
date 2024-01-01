import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:posmencalismasi1/widget/g%C3%B6r%C3%BCn%C3%BCm.dart'; // bu tıkpı değişken gibi davranıyor

//bak burda bir paket yükledik http paketi
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List productList = [];
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
    final response = await http.get(ur1); //cevap değişkeni diye biliriz
    final dataAsJson = json.decode(response.body); //jsona çevirme
    setState(() {
      productList = dataAsJson["products"]; // bu bir liste
    });

    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (ctx, index) => GRNM(
              imUrl: productList[index]["thumbnail"],
              title: productList[index]["title"])),
    );
  }
}
