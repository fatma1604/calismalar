//LİSTELER GELECEK
import 'package:flutter/material.dart';
import 'package:proje/data.dart';

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
  Yemek(
      id: 1, name: "mercimek corbası", mazeme: ["mazemler "], sef: "bilmem ne"),
  Yemek(
      id: 2, name: "arasıcak yemek ", mazeme: ["maezmeler"], sef: "bilmem ne"),
  Yemek(id: 3, name: "tatlı", mazeme: ["mazwemlerr "], sef: "bilmem ne"),
  Yemek(id: 4, name: "Harcama ", mazeme: [], sef: "ddhhdh")
];
