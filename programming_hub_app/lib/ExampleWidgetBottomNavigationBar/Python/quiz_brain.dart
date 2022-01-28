import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Python is an interpreted high-level general-purpose programming language?', true),
    Question('Mathematical Operations can be performed on a string.', false),
    Question('Python allows you to assign a single value to multiple variables simultaneously.', true),
    Question('Study the following function: \n all([2,4,0,6]) \n What will be the output of this function?', false),
    Question('What happens when "2" == 2 is executed?', false),
    Question('A python tuple can be created without using any parentheses.', true),
    Question('t1 = (1, 2, 4, 3) \n t2 = (1, 2, 3, 4) \n t1 < t2', false),
    Question('def foo(x): \n x[0] = ["def"] \n x[1] = ["abc"] \n return id(x) \n q = ["abc", "def"] \n print(id(q) == foo(q))', true),
    Question('z=set("abcde") \n "a" in z', true),
    Question('The expression Int(x) implies that the variable x is converted to integer.', true),
    Question('What is the output of print 0.1 + 0.2 == 0.3?', false),
    Question('list1 = [11, 2, 23] \n list2 = [11, 2, 2] \n list1 < list2', false),
    Question('d = {"john":40, "peter":45} \n "john" in d', true),
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
