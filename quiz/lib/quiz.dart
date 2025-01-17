import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz({
    @required this.questions,
    @required this.answerQuestions,
    @required this.questionIndex,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question(
            questions[questionIndex]['QuestionText'],
          ),
          ...(questions[questionIndex]['Answers'] as List<Map<String,Object>>).map((answer){
            return Answer(() => answerQuestions(answer['score']),answer['text']);
          }).toList()
        ],
      );    
  }
}