import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('The space required for structure variables is allocated on the stack.', true),
    Question('Arithmetic operators are called ____ operators when you use two arguments with each operator. → binary', true),
    Question('Reference and ____ parameters have memory addresses that are passed to a method, allowing it to alter the original variables. → output', true),
    Question('The ____ method returns a string that holds the name of the class, just as GetType() does. → WriteLine()', false),
    Question('In C#, you can use either new or ____ when defining a derived class member that has the same name as a base class member. → out', false),
    Question('In C#, you can display variable values by using the variable name within a ____ method call. → WriteLine()', true),
    Question('The data components of a class often are called its ____. → iteration', false),
    Question('A class that is used as a basis for inheritance is called a(n) ____. → derived class', false),
    Question('A ____ is a number that uniquely identifies an object. → class', false),
    Question('The += operator is the ____ operator; it adds the operand on the right to the operand on the left and assigns it to the operand on the left in one step. → add and assign', true),
    Question('One execution of any loop is called a(n) ____. → pretest', false),
    Question('You can use the keyword ____ to access a parent class method. → Console.ReadLine()', false),
    Question('C# contains a(n) ____ interface, which contains the definition for the CompareTo() method that compares one object to another and returns an integer. → Console.ReadLine()', true),
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
