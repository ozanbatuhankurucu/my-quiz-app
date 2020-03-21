import 'package:flutter/material.dart';
import 'package:my_quiz_app/data/questionbank.dart';
import 'components/list_card.dart';
import 'quiz.dart';
import 'quizbrain.dart';

QuestionBank qB = QuestionBank();

class TopicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True False Questions"),
        centerTitle: true,
        backgroundColor: Color(0xff1b262c),
      ),
      body: Column(
        children: <Widget>[
          ListCard(
            cardNumber: "1",
            cardTitle: "General",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Quiz(quizBrain: QuizBrain(qB.getQuestionBank()[0])),
                ),
              );
            },
          ),
          ListCard(
            cardNumber: "2",
            cardTitle: "Books",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Quiz(quizBrain: QuizBrain(qB.getQuestionBank()[1])),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
