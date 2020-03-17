import 'package:flutter/material.dart';
import 'package:my_quiz_app/data/questionbank.dart';
import 'quiz.dart';
import 'quizbrain.dart';
  
  questionBank qB = questionBank();


class topicList extends StatelessWidget {
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
          Card(
              child: ListTile(
                leading: Text("1",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(quizBrain: QuizBrain(qB.getQuestionBank()[0])),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xff75daad),
                  ),
                ),
                title: Text("General",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              ),
            ),
             Card(
              child: ListTile(
                leading: Text("2",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz(quizBrain: QuizBrain(qB.getQuestionBank()[1])),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xff75daad),
                  ),
                ),
                title: Text("Books",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              ),
            ),

        ],
      ),
    );
  }
}
