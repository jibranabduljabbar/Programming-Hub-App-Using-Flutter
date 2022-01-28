import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('C++ is both procedural as well as object oriented programming language.', true),
    Question('It is not possible to achieve inheritance of structures in c++?', false),
    Question('Super classes are also called Parent classes/Base classes.', true),
    Question('Sub classes may also be called Child classes/Derived classes.', true),
    Question('The computer will carry out the instructions that follow the symbol', false),
    Question('A program must have a main function.', true),
    Question('The following is an example of a declaration statement:cout << "Enter a number: ";', false),
    Question('An identifier must start with a letter or an underscore.', true),
    Question('In the statement below: “Hello!” is called a string literal.cout << “Hello!”', true),
    Question('76.45e-2 is a valid value for a float data type.', true),
    Question('It is best to use very short identifiers.', false),
    Question('There is no limit on the size of the numbers that can be stored in the int data type.', false),
    Question('There are only two possible values for the bool data type.', true),
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
