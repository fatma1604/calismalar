//CLASS
//KATEGORESİ
//YEMEK

import 'package:flutter/material.dart';

class Categori {
  final String name;
  final int id;
  final Color color;

  const Categori({
    required this.name,
    required this.id,
    required this.color,
  });
}

class Yemek {
  final String name;
  final int id;
  final List<String> mazeme;

  final String sef;
  const Yemek(
      {required this.id,
      required this.name,
      required this.mazeme,
      required this.sef});
}
