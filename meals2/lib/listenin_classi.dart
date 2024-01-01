import 'package:flutter/material.dart';

class Category {
  final int id;
  final String name;
  final Color color;
  const Category(
      {required this.name, required this.id, this.color = Colors.greenAccent});
}

class Meal {
  const Meal({
    required this.categoryId,
    required this.name,
    required this.imageUrl,
    required this.ingredients,
  });

  final int categoryId;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
}

class Yemek {
  final int id;
  final String name;
  final Baharat baharat;

  const Yemek({
    required this.id,
    required this.name,
    required this.baharat,
  });
}

class Baharat {
  final int id;
  final String name;
  final String oran;
  final BaharatMarka baharatMarkasi;
  Baharat(
      {required this.id,
      required this.name,
      required this.oran,
      required this.baharatMarkasi});
}

class BaharatMarka {
  final int id;
  final String name;
  BaharatMarka({
    required this.id,
    required this.name,
  });
}
