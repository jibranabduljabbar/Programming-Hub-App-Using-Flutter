import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('In PCA the number of input dimensiona are equal to principal components', true),
    Question('PCA can be used for projecting and visualizing data in lower dimensions.', true),
    Question('Dimensionality Reduction Algorithms are one of the possible ways to reduce the computation time required to build a model', true),
    Question('The gini index is not biased towards multivalued attributed.', false),
    Question('Gini index does not favour equal sized partitions.', false),
    Question('Dimensionality reduction algorithms are one of the possible ways to reduce the computation time required to build a model.', true),
    Question('When the number of classes is large Gini index is not a good choice.', true),
    Question('It is not necessary to have a target variable for applying dimensionality reduction algorithms', true),
    Question('A perceptron adds up all the weighted inputs it receives, and if it exceeds a certain value, it outputs a 1, otherwise it just outputs a 0.', true),
    Question('Multivariate split is where the partitioning of tuples is based on acombination of attributes rather than on a single attribute.', true),
    Question('Attribute selection measures are also known as splitting rules.', true),
    Question('The maximum likelihood method can be used to explore relationships among more diverse sequences, conditions that are not well handled by maximum parsimony methods.', true),
    Question('Gain ratio tends to prefer unbalanced splits in which one partition is much smaller than the other', true),
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
