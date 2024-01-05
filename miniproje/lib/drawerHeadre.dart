import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const AppDrawer({
    Key? key,
    required this.onItemTapped,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("Drawer Başlık"),
          ),
          _createListTile("Bolum 1", 0),
          _createListTile("Bolum 2", 1),
          _createListTile("Bolum 3", 2),
          _createListTile("Bolum 4", 3),
        ],
      ),
    );
  }

  Widget _createListTile(String title, int index) {
    return ListTile(
      title: Text(title),
      selected: selectedIndex == index,
      onTap: () {
        onItemTapped(index);
        //Navigator.pop(context);
      },
    );
  }
}
