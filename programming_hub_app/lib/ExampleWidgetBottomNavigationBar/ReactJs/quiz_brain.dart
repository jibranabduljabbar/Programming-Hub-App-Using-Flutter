import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Does React.js create a VIRTUAL DOM in the memory?', true),
    Question('React merges the object you provide into the current state using setState().', true),
    Question('In ES6 – var has a function scope, not a block scope?', true),
    Question('React can only render elements in the root document element.', false),
    Question('Although React Hooks generally replace class components, there are no plans to remove classes from React.', true),
    Question('The constructor function is called automatically when the object is initialized.', true),
    Question('React.js Covers only the view layer of the app.', true),
    Question('Javascript is used for dom manipulation in react.', true),
    Question('JSX necessary to work with React?', false),
    Question('Can we have multiple reducers in an app?', true),
    Question('Can we use the same hook multiple times in a function?', true),
    Question('To develop and run React code, Node.js is required.', true),
    Question('React component names must begin with an uppercase letter.', true),
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
