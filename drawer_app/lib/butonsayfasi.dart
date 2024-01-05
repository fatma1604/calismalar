import 'package:drawer_app/appdrewer.dart';
import 'package:drawer_app/buton.dart';
import 'package:drawer_app/data/questions.dart';
import 'package:drawer_app/finis_sceen.dart';
import 'package:flutter/material.dart';
import 'package:drawer_app/models/question_model.dart';

class Butonsayfas extends StatefulWidget {
  const Butonsayfas({Key? key, required this.chooseAnswer}) : super(key: key);
  final void Function(String answer) chooseAnswer;

  @override
  _ButonsayfasState createState() => _ButonsayfasState();
}

class _ButonsayfasState extends State<Butonsayfas> {
  int selectedQuestionIndex = 0;

  List<String> userAnswers = [];

  void chooseAnswer(String answer) {
    setState(() {
      userAnswers.add(answer);
    });
  }

  void getNextQuestion() {
    setState(() {
      if (questions.length - 1 > selectedQuestionIndex) {
        selectedQuestionIndex++;
      } else {
        // Eğer sorular bitmişse, FinishScreen'e yönlendir
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => FinishScreen(
              userAnswers: userAnswers,
              questions: questions,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sorular "),
      ),
      drawer: AppDrawer(
        onItemTapped: (index) {},
        selectedIndex: -1,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(questions[selectedQuestionIndex].question),
              ...questions[selectedQuestionIndex].answers.map((answer) {
                return ElevatedButton(
                  onPressed: () {
                    chooseAnswer(answer);
                    getNextQuestion();
                  },
                  child: Text(answer),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
