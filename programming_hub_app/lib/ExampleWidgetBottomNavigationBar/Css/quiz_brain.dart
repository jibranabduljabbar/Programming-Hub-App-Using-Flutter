import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('External stylesheets are stored in CSS files', true),
    Question('“font-style comes first than font-weight in font attribute”.State true or false.', false),
    Question('Is it the best way to include H1 heading only one time on the web page.', true),
    Question("For Inline Style, we don’t need to reapply style information throughout the document and outside documents.", false),
    Question('Inline style has the lowest priority', false),
    Question('A selector (ex: h1{ } ) can only have 1 property', false),
    Question('Is it the best way to include H1 heading only one time in the web page. State true or false.', true),
    Question('You should always define a backup font-family in CSS.', true),
    Question('For Inline Style don�t need to reapply style information throughout the document and outside documents.State true or false.', false),
    Question('For document-Wide StyleCan easily control style document by document.State true or false.', true),
    Question('For External Style Sheets in some cases when @import is used, the browser may cause a rendering �flash� under slow loading conditions.State true or false.', true),
    Question('This code will work. h2 {border: 80cm solid gold;}', true),
    Question('You can customize each side of the border.', true),
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
