import 'package:flutter/material.dart';
import 'package:meals2/listenin_classi.dart';

BaharatMarka ulkerMarka = BaharatMarka(id: 1, name: "ülker");

Baharat karabiber =
    Baharat(id: 1, name: "karabiber", oran: "on", baharatMarkasi: ulkerMarka);

Yemek yemek = Yemek(id: 1, name: "mercimekcorbasi", baharat: karabiber);






const categorylist = [
  Category(name: "ana yemek", id: 1, color: Colors.black),
  Category(name: "tatlı ", id: 2),
];


const mealsListe = [
  Meal(
      categoryId: 1,
      name: "mercimek çorbası",
      imageUrl: "imageUr1",
      ingredients: ["ncnncn"]),
  Meal(
      categoryId: 1,
      name: "pilav",
      imageUrl: "imageUr1",
      ingredients: ["ncnncn"]),
  Meal(
      categoryId: 2,
      name: "baklava",
      imageUrl: "imageUr1",
      ingredients: ["ncnncn"]),
];
