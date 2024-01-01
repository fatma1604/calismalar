import 'package:flutter/material.dart';
import 'package:meals2/listenin_classi.dart';
import 'package:meals2/newpage.dart';

class Meals extends StatelessWidget {
  Meals({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    List<Meal> meals = mealsListe
        .where((element) => element.categoryId == category.id)
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(category.name),
        ),
        body: ListView.builder(
            itemCount: meals.length,
            itemBuilder: ((context, index) => Text(meals[index].name))));
  }
}