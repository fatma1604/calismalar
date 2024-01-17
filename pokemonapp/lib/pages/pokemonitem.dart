import 'package:flutter/material.dart';
import 'package:pokemonapp/models/pokemon.dart';

class PokemonTem extends StatefulWidget {
  const PokemonTem({Key? key, required this.pokemonModel}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  _PokemonTemState createState() => _PokemonTemState();
}

class _PokemonTemState extends State<PokemonTem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //detay lişstesine gidicek
      },
      child: Card(
        child: Column(children: [
          AspectRatio(aspectRatio: 4 / 2),
        ]),
      ),
    );
  }
}
