//LİSTELER GELECEK
import 'package:flutter/material.dart';
import 'package:miniproje/data.dart';

const categorylist = [
  Categori(
    name: "Ana yemk",
    id: 1,
    color: Colors.yellowAccent,
  ),
  Categori(
    name: "Ara Sıcak ",
    id: 2,
    color: Color(0xFFFFD740),
  ),
  Categori(name: "Tatlı", id: 3, color: Colors.pink),
];
const yemekListesi = [
  Yemek(id: 1, name: "mercimek corbası", mazeme: ["mazemler "], sef: "şef"),
  Yemek(id: 2, name: "arasıcak yemek ", mazeme: ["maezmeler"], sef: "şe"),
  Yemek(id: 3, name: "tatlı", mazeme: ["mazwemlerr "], sef: "şef"),
  Yemek(id: 4, name: "Harcama ", mazeme: [], sef: "şe")
];
