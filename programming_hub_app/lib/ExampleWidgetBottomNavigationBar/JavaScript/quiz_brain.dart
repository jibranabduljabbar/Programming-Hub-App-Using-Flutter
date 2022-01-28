import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('JavaScript is a scripting or programming language?', true),
    Question('Adding White Space to scripts may slow down the execution speed of a script.', false),
    Question('The statements inside an if statement are contained by the same curly braces used to contain the statements in a function.', true),
    Question('The external JavaScript file must contain the <script> tag.', false),
    Question('JavaScript is the same as Java.', false),
    Question('JavaScript Is Case Sensitive', true),
    Question('functioncomparing() \n { \n int x = 9; \n chary = 9; \n if(x==y) \n return \n true; \n else \n return false; \n }', true),
    Question('functioncomparison() \n { \n int number=10; \n if(number==="10") \n return true; \n else \n return false; \n }', true),
    Question('function display1(option) \n { \n     return(option ?  "true" :  "false"); \n } \n     bool ans=true; \n console.log(display1(ans));', true),
    Question('What we will get if we compare the "one" with "8" using the less than operator ("one"<8)?', false),
    Question('const obj ={prop:12}; \n Object.preventExtensions(obj); \n console.log(Object.isExtensible(obj));', false),
    Question('const object1 ={ \n property1:20 \n }; \n console.log(Object.is(object1));', false),
    Question('functionfun() \n { \n int y = 10; \n char z = 10; \n if(y.tostring()===z) \n return true; \n else \n return false; \n }', true),
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
