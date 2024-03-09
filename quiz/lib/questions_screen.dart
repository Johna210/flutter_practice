import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreen> {
  int current = 0;
  final noOfQuestions = questions.length;

  void nextQuestion() {
    setState(() {
      if (current < noOfQuestions) {
        current++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (current == noOfQuestions) {
      current--;
    }
    final currentQuestion = questions[current];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.question,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map(
            (item) {
              return AnswerButton(item, nextQuestion);
            },
          )
        ],
      ),
    );
  }
}
