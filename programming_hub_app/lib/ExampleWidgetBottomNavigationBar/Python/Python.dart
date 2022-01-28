import 'package:flutter/material.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/quiz_brain.dart';
import 'package:google_fonts/google_fonts.dart';

QuizBrain quizBrain = QuizBrain();

class Quizzler10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Python Programming Quiz",style: GoogleFonts.sourceSansPro(
            color: Colors.white,
            fontWeight: FontWeight.bold
            ))),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                child: Icon(Icons.more_vert, color: Colors.white,))
            ],
            ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void Move(){
              Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quiz()));    
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          style: AlertStyle(titleStyle: GoogleFonts.sourceSansPro(          
            fontWeight: FontWeight.bold,
            fontSize: 15
          )),
          title: "Completed...", 
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("You\'ve reached the end of the quiz.",style: GoogleFonts.sourceSansPro(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),),
          ),
          buttons: [
        DialogButton(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "More Quiz",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white
                ),
              ),
            ),
          ),
          onPressed: () => Move(),
          width: 120,
        )
      ],
        ).show();

        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check_circle_outlined,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            FontAwesomeIcons.timesCircle,
            color: Colors.red,
          ));
        }
        quizBrain.getQuestionNumber();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black
                    )
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
    child: Column(children: [
Container(
      width: 365,
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 40),
      height: 55,
      child: ElevatedButton.icon(
            label: Text("True",
                style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold)),
            icon: Icon(Icons.online_prediction),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6), // <-- Radius
              ),
              shadowColor: Colors.grey,
              primary: Colors.green,
              onPrimary: Colors.white,
              side: BorderSide(color: Colors.green, width: 3),
            ),
            onPressed: () {
              checkAnswer(true);
            },
      ),
    ),
    Container(
      width: 365,
      margin: EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 40),
      height: 55,
      child: ElevatedButton.icon(
            label: Text("False",
                style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold)),
            icon: Icon(Icons.online_prediction),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6), // <-- Radius
              ),
              shadowColor: Colors.grey,
              primary: Colors.red,
              onPrimary: Colors.white,
              side: BorderSide(color: Colors.red, width: 3),
            ),
            onPressed: () {
              checkAnswer(false);
            },
      ),
    ),
    SizedBox(height: 30,)
    ])
  ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

