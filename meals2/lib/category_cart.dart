import 'package:flutter/material.dart';
import 'package:meals2/listenin_classi.dart';

class CatagoryCart extends StatelessWidget {
  const CatagoryCart(
      {Key? key, required this.categoryy, required this.onCategoryClick})
      : super(key: key);
  final Category categoryy; 
  final void Function() onCategoryClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCategoryClick();
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            categoryy.color.withOpacity(0.5),
            categoryy.color.withOpacity(0.9)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(categoryy.name),
      ),
    );
  }
}
