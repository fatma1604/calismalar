import 'package:flutter/material.dart';
import 'package:vidoekleme/hom_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
//intarneten vido getire bilmek için >adprit>app>src>main>adroritmanefest> aplicstion üsrtüne>user-permission <android:name>="android.user-permission.intent"</android:name> bunu yazıyoruz
