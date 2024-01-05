import 'package:flutter/material.dart';
import 'package:drawer_app/models/question_model.dart';

class QuestionWidget extends StatelessWidget {
  final QuestionModel questionModel;

  const QuestionWidget({Key? key, required this.questionModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(questionModel.question),
        Column(
          children: questionModel.answers.map((answer) {
            return ElevatedButton(
              onPressed: () {
                // Cevap kontrolü burada yapılabilir
                if (answer == questionModel.correctAnswer) {}
              },
              child: Text(answer),
            );
          }).toList(),
        ),
      ],
    );
  }
}
