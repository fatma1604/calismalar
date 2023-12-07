import 'package:flutter/material.dart';
import 'package:tobeto/data/dummy_data.dart';
import 'package:tobeto/main.dart';
import 'package:tobeto/models/catagory.dart';
import 'package:tobeto/screens/meals.dart';
import 'package:tobeto/widgets/cotogry_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  // context objesi => statefull widget => context objesi tüm noktalardan erişilebilir
  // stateless widget => context objesi yalnızca build fonksiyonundan erişilebilir.
  void _changeScreen(Category category, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Meals(
              category: category,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bir kategori seçin.."),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2),
        children: [
          for (final c in categoryList)
            CategoryCard(
              category: c,
              onCategoryClick: () => _changeScreen(c, context),
            ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: them.colorScheme.primary, // Özel tema renkleri
              ),
              child: Text(" Drawer Başlığı"),
            ),
            ListTile(
              title: const Text("Ana Sayfa"),
              onTap: () {
                // Ana sayfaya gitme işlemleri
              },
            ),
          ],
        ),
      ),
    );
  }
}
