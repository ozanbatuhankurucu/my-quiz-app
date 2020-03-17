import 'question.dart';

class QuizBrain {
  int _currentIconNum=0;
  int _currentQuestionNum = 0;
  List<Question> _questionBank;


  QuizBrain(this._questionBank);
  

  List<Question> getQuestionBank() {
    return _questionBank;
  }

  String getCurrentQuestion() {
    return _questionBank[_currentQuestionNum].question;
  }

  bool getCurrentAnswer() {
    return _questionBank[_currentQuestionNum].answer;
  }

  int getCurrentQuestionNum() {
    return _currentQuestionNum;
  }

  void nextQuestion() {
    if(_currentQuestionNum<_questionBank.length-1){
      _currentQuestionNum++;
    }
    if(_currentIconNum<_questionBank.length){
      _currentIconNum++;
    }
   
    print(_currentQuestionNum);
  }

  int getCurrentIconNum(){
    return _currentIconNum;
  }

  

  void resetCurrentNums(){
    _currentQuestionNum=0;
    _currentIconNum=0;
  }
}
