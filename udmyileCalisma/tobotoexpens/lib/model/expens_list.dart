import 'package:flutter/material.dart';

enum Catgory { work, travel, food, drees }

const CatgoryIcons = {
  Catgory.work: Icons.abc,
  Catgory.travel: Icons.add_location_rounded,
  Catgory.drees: Icons.accessibility_outlined,
  Catgory.food: Icons.add_reaction_rounded,
};

class ExpensList {
  final String name;
  final String harcama;
  final DateTime date;
  final Catgory catgory;
  ExpensList(
      {required this.name,
      required this.harcama,
      required this.date,
      required this.catgory});

  void add(ExpensList expenslist) {}
}
