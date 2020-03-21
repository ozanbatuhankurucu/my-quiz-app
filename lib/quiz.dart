import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:audioplayers/audio_cache.dart';



class Quiz extends StatefulWidget {
  final QuizBrain quizBrain;
  Quiz({Key key, @required this.quizBrain}) : super(key: key);
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Widget> scoreKeeper = [];
final player = AudioCache();
  

  void answerControl(bool answer) {
    if (widget.quizBrain.getCurrentIconNum() ==
        widget.quizBrain.getQuestionBank().length) {
      _onAlertButtonPressed(context);
    }
    setState(() {
      if (widget.quizBrain.getCurrentIconNum() <
          widget.quizBrain.getQuestionBank().length) {
        if (answer == widget.quizBrain.getCurrentAnswer()) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
         player.play('win.wav');
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
           player.play('fail.mp3');
        }
      }
      widget.quizBrain.nextQuestion();
    });
  }

  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "THE END",
      desc: "Questions is finished!",
      buttons: [
        DialogButton(
          color: Colors.red,
          child: Text(
            "RESET",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          onPressed: () {
            setState(() {
              scoreKeeper = [];
              widget.quizBrain.resetCurrentNums();
            });
            Navigator.pop(context);
          },
          width: 100,
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b262c),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff1b262c),
        title: Text("My Quiz App"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Row(
              children: scoreKeeper,
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Text(
                  widget.quizBrain.getCurrentQuestion(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'RobotoSlab'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  onPressed: () {
                    answerControl(true);
                  },
                  child: Text(
                    "True",
                    style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  onPressed: () {
                    answerControl(false);
                  },
                  child: Text(
                    "False",
                    style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
