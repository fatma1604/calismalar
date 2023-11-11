//yun yapma kısmına geldik onlar ödev2 de


//ben butona bastımda adam bana bi ekran çıkartsın veya bi yazı yasın isterim
import 'package:flutter/material.dart';

class Questionscreen extends StatefulWidget {
  const  Questionscreen({super.key});

    @override
  State<Questionscreen> createState() {
    return _Questionscreen();
  }
}
//ekranlar arası geçiş
//navigayor

class _Questionscreen extends State<Questionscreen> {
  int currentQuestionIndex = 0;

  String text = "Aşağıdakilerden hangisi bir widget türüdür";

  String soru =questions[0].question;

  static get questions=> null;
  void changeText(String answer) {
    setState(() {
      text = answer;
      if (questions.length - 1<currentQuestionIndex )

        currentQuestionIndex++;
       else{
        //biz yazcaz 
       }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(questions[currentQuestionIndex].question),
              ...questions[currentQuestionIndex].answers.map((answer) {
                return ElevatedButton(
                  onPressed: () {
                    changeText(answer);
                  // Yeni soruya geç
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