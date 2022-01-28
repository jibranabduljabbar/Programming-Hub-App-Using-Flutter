import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Inline elements are normally displayed without starting a new line.', true),
    Question('An <iframe> is used to display a web page within a web page.', true),
    Question('HTML comments start with <!-- and end with -->', true),
    Question('Block elements are normally displayed without starting a new line.', false),
    Question('In HTML, you can embed SVG elements directly into an HTML page.', true),
    Question('You do need a connection to the Internet to test your HTML code.', false),
    Question('Images can be added to your Web page in more than one way.', true),
    Question('A tooltip in the title attribute can only be used on images.', false),
    Question('HTML tags are case sensitive.', false),
    Question('One of the functions of the "alt" attribute is to provide information about the image to assistive technologies and search engines.', true),
    Question('Any complete HTML5 file must contain bits of CSS and Javascript.', false),
    Question('The anchor element is the same as the < link > tag.', false),
    Question('The HTML structure of a document is a tree. True or false?', true),
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
