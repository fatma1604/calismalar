import 'package:drawer_app/appdrewer.dart';
import 'package:drawer_app/models/question_model.dart';
import 'package:flutter/material.dart';

class FinishScreen extends StatelessWidget {
  final List<String> userAnswers;
  final List<QuestionModel> questions;

  FinishScreen({required this.userAnswers, required this.questions});

  int correctCount = 0;
  int wrongCount = 0;

  int calculateCorrectResult(
      List<QuestionModel> questions, List<String> userAnswers) {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer == userAnswers[i]) {
        correctCount++;
      }
    }
    return correctCount;
  }

  int calculateWrongResult(
      List<QuestionModel> questions, List<String> userAnswers) {
    for (int i = 0; i < questions.length; i++) {
      if (questions[i].correctAnswer != userAnswers[i]) {
        wrongCount++;
      }
    }
    return wrongCount;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz Bitti',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        drawer: AppDrawer(
          onItemTapped: (index) {},
          selectedIndex: -1,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cevaplarınız",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 20),
                for (int i = 0; i < userAnswers.length; i++)
                  Text(
                    'Soru ${i + 1}: => Cevap: ${userAnswers[i]}',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                SizedBox(height: 20),
                Text(
                  "Toplam Doğru Sayınız: ${calculateCorrectResult(questions, userAnswers)}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Toplam Yanlış Sayınız: ${calculateWrongResult(questions, userAnswers)}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Toplam Soru Sayısı: ${questions.length}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
