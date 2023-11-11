
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homScreen.dart';
import 'package:flutter_application_1/questionScreen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  String activeScreenName = "home-scren";
  void goToQuiz() {
    setState(() {
      activeScreenName = "quiz-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen(goToQuiz);
    if (activeScreenName == "quiz-screen") activeScreen = Questionscreen();
    return Container(
      child: activeScreen,
    );
  }
}
