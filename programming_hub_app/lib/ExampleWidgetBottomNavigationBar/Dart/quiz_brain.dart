import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Dart has multiple interfaces.', true),
    Question('Dart is a client-optimized language for fast apps on any platform.', true),
    Question('Dart is developed by Google', true),
    Question('A notable feature of the Dart platform is its support for "hot reload"', true),
    Question('Dart can be used for both mobile and web development.', true),
    Question('The extension of Dart is .dart', true),
    Question('The future for Dart is bright,', true),
    Question('Dart is Designed by Lars Bak and Kasper.', true),
    Question('Dart is in 7th place behind Julia.', true),
    Question('Flutter uses Dart as the programming language', true),
    Question('Dart is worth your time to examine thoroughly', true),
    Question('Dart is actually on the server side.', true),
    Question('Dart is an object-oriented, class-based, garbage-collected language', true),
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
