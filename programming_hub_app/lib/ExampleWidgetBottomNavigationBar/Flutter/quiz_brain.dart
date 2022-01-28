import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Without the main() function, we cannot write any program on Flutter.', true),
    Question('When you build the Flutter app the first time, it will take a longer time.', true),
    Question('Release mode allows us to optimize the codes and generate them without any debug data in a fully optimized form', true),
    Question('Flutter is developed by Facebook', false),
    Question('Flutter use platform primitives', false),
    Question('Flutter uses one code base', true),
    Question('Flutter’s engine, written primarily in C++, provides low-level rendering support using Google’s Skia graphics library.', true),
    Question('A notable feature of the Dart platform is its support for hot reload', true),
    Question('Flutter is an app development library', false),
    Question('Flutter is only supported on Windows.', false),
    Question("Flutter doesn't support 60fps animations", false),
    Question('Code written on Flutter requires Javascript Interpretter', false),
    Question('Flutter supports cross platform development', true),
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
