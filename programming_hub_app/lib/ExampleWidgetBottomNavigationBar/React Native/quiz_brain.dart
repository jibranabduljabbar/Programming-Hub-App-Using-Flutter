import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('React Native is developed by Google', false),
    Question('React Native is an open-source UI software framework', true),
    Question('React Native is used to develop applications for Android, Android TV, iOS, macOS, tvOS, Web, Windows and UWP', true),
    Question('React Native Written in: Urdu, CSS, C, Flutter, English', false),
    Question('React Native License MIT-License', true),
    Question('It is also being used to develop virtual reality applications', true),
    Question("It's also much faster and cheaper to build apps", true),
    Question('React Native is great for mobile apps.', true),
    Question('React Native as opposed to building native ones, without the need to compromise on quality and functionality.', true),
    Question('React Native is a JavaScript framework', true),
    Question('React merges the object you provide into the current state using setState()', false),
    Question('Does React.js create a VIRTUAL DOM in the memory?', true),
    Question('React Native is responsible only for the front end.', true),
  ];
  void getQuestionNumber() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
