import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Java is short for "JavaScript".', false),
    Question('The value of a string variable can be surrounded by single quotes.', false),
    Question('In Java, it is possible to inherit attributes and methods from one class to another.', true),
    Question('    class output \n    { \n         public static void main(String args[]) \n         { \n            String c = "Hello i love java"; \n           boolean var; \n            var = c.startsWith("hello"); \n            System.out.println(var); \n         } \n     }', false),
    Question('Java Virtual Machine is an attempt to the goal that was “write once; run anywhere, any time, forever.”', true),
    Question('if(1 + 1 + 1 + 1 + 1 == 5){ \n   System.out.print(“TRUE”); \n } \n else{ \n   System.out.print(“FALSE”); \n }', true),
    Question('Inheritance interacts with encapsulation as well', true),
    Question('Java is related to C++, which is a direct descendent of C.', true),
    Question('Java was not designed to be source-code compatible with any other language.', true),
    Question('Common Object Request Broker Architecture means CORBA', true),
    Question('Java is same as JavaScript', false),
    Question('Java defines eight simple (or elemental) types of data: byte, short, int, long, char, float, double, and boolean.', true),
    Question('When Java source code is compiled, each individual class is put into its own output file named after the class and using the .class extension.', true),
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
