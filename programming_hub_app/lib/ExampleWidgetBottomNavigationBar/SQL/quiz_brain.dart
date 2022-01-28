import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('SQL Server automatically sets the NOT NULL constraint for all the primary key columns if the NOT NULL constraint is not specified for these columns.', true),
    Question('It is mandatory to define constraint for each attribute of a table.', false),
    Question('Unique constraints ensures that all the values in a column  are distinct/unique.', true),
    Question('Each table can contain more than one primary key.', false),
    Question("Primary Key does allow the Null Values. where as in Unique key doesn't accept the Null values", false),
    Question('The result of a SELECT statement can contain duplicate rows. ', true),
    Question('A NULL value is treated as a blank or  zero.', false),
    Question('By default, each attribute can take NULL values except for the primary key.', true),
    Question('A relation may have multiple foreign keys.', true),
    Question('We can use DROP statement to remove a database or table permanently from the system.', true),
    Question('Each foreign key is defined on a multiple attribute.', false),
    Question('We can insert two records with same roll number in a table if roll is assigned as primary key.', false),
    Question('SQL is case-sensitive', false),
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
