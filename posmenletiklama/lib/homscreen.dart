import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'package:posmenletiklama/gorunum.dart';

class Homscreen extends StatefulWidget {
  const Homscreen({Key? key}) : super(key: key);

  @override
  _HomscreenState createState() => _HomscreenState();
}

class _HomscreenState extends State<Homscreen> {
  List productList = [];
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ana ekran "),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) => Gorunum(
          imUrl: productList[index]["thumbnail"],
          prince: productList[index]["price"],
        ),
      ),
    );
  }

  void getProducts() async {
    Uri ur1 = Uri.http("dummyjson.com", "carts");
    final response = await http.get(ur1);
    final dataAsJson = json.decode(response.body);
    setState(() {
      productList = dataAsJson["products"];
    });
    print(response);
  }
}
