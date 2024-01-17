import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokemonapp/models/pokemon.dart';
import 'package:pokemonapp/pages/pokemonitem.dart';
import 'package:http/http.dart' as http;

class HoemPage extends StatefulWidget {
  const HoemPage({Key? key}) : super(key: key);

  @override
  _HoemPageState createState() => _HoemPageState();
}

class _HoemPageState extends State<HoemPage> {
  List pokemnList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pokemnList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                child: ListView.builder(
                  itemBuilder: (ctx, index) => PokemonTem(
                    pokemonModel: pokemnList[index],
                  ),
                ),
                onRefresh: () async {
                  fetchPokemon();
                }));
  }

  void fetchPokemon() async {
    Uri url = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    final response = await http.get(url);
    final jsonDate = json.decode(response.body);
    setState(() {
      pokemnList = jsonDate.map((json) => PokemonModel.fromJson(json)).toList();
    });
  }
}
