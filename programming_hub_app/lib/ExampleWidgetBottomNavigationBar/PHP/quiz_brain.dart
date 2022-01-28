import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('PHP is an example of Server-side scripting language.', true),
    Question('When using the POST method, variables are displayed in the URL:', false),
    Question('In PHP you can use both single quotes ( ' ' ) and double quotes ( " " ) for strings:', true),
    Question('Include files must have the file extension ".inc"', false),
    Question('PHP allows you to send emails directly from a script', true),
    Question('PHP can be run on Microsoft Windows IIS(Internet Information Server):', true), 
    Question('The die() and exit() functions do the exact same thing.', true),
    Question('In PHP, the only way to output text is with echo.', false),
    Question('The if statement is used to execute some code only if a specified condition is true', true),
    Question('<?php \n \$x = 100; \n if (\$x < 200){ \n     echo "True"; \n } \n else{ \n     echo "False"; \n } \n ?>', true),
    Question('Doubly quoted strings are treated almost literally, whereas singly quoted strings replace variables with their values as well as specially interpreting certain character sequences.', false),
    Question('<?php \n \$a = 15; \n \$b = 20; \n if (\$a < ++\$a || \$b < ++\$b){ \n     echo "True"; \n } \n else{ \n     echo "False"; \n } \n ?>', false),
    Question('Echo statement is written under parentheses?', false),
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
