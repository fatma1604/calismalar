import 'package:flutter/material.dart';
import 'package:sorucalismasi/data/data.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({Key? key}) : super(key: key);

  @override
  _QuizscreenState createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  var num = 0;
  void changeQuiz() {
    setState(() {
      if (num < questions.length - 1) {
        num++;
      } else {}
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questions[num].question,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5),
              ),
              const SizedBox(height: 50),
              ...questions[num].answers.map(
                (answer) {
                  return ElevatedButton(
                    onPressed: () {
                      changeQuiz();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo[100],
                        foregroundColor: Colors.indigo,
                        minimumSize: Size(380, 40)),
                    child: Text(
                      answer,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
