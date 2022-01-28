import 'package:flutter/material.dart';
import 'package:general_knowledge/Categories/Java.dart';
import 'package:general_knowledge/Categories/Python.dart';
import 'package:general_knowledge/Categories/CSharp.dart';
import 'package:general_knowledge/Categories/JavaScript.dart';
import 'package:general_knowledge/Categories/ReactNative.dart';
import 'package:general_knowledge/Categories/Flutter.dart';
import 'package:general_knowledge/Categories/SQL.dart';
import 'package:general_knowledge/Categories/MachineLearning.dart';
import 'package:general_knowledge/Categories/C++.dart';
import 'package:general_knowledge/Categories/ReactJs.dart';
import 'package:general_knowledge/Categories/PHP.dart';
import 'package:general_knowledge/Categories/HTML.dart';
import 'package:general_knowledge/Categories/Dart.dart';
import 'package:general_knowledge/Categories/CSS.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/About_Policies.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/C++/C++.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/CSharp/CSharp.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Css/Css.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Dart/Dart.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Flutter/Flutter.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/HTML/HTML.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Java/Java.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/JavaScript/JavaScript.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/MachineLearning/MachineLearning.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Notifications.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/PHP/PHP.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Profile.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/Python.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/React%20Native/ReactNative.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/ReactJs/ReactJs.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/SQL/SQL.dart';
import 'package:general_knowledge/Home.dart';
import 'package:general_knowledge/Login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  home(BuildContext context) => {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
  };
  search(BuildContext context) => {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Screen3()))
  };
  quiz(BuildContext context) => {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()))
  };
  policy(BuildContext context) => {
   Navigator.push(context, MaterialPageRoute(builder: (context) => Screen5()))
  };
  profile(BuildContext context) => {
    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null) {
        showDialog(context: context, builder: (context) {
   return AlertDialog(
             title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Issues: ", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
          content: Center(
            child: Text("Currently you are Logout! | Login Now", style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black
                        ),),
          ),
          actions: [
                                                      Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DefaultTabControllerExample()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Login now",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
        SizedBox(height: 10,),
                                          Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                        Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Cancel",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
          ],
           );
              });

        print('User is currently signed out!');
             } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen4()));
            print('User is signed in!');
      }
    })
  };
    notifications(BuildContext context) => {
    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null) {
        showDialog(context: context, builder: (context) {
   return AlertDialog(
             title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Issues: ", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
          content: Center(
            child: Text("Currently you are Logout! | Login Now", style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black
                        ),),
          ),
          actions: [
                                                      Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DefaultTabControllerExample()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Login now",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
        SizedBox(height: 10,),
                                          Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                        Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Cancel",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
          ],
           );
              });
      
        print('User is currently signed out!');
             } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
            print('User is signed in!');
      }
    })
  };

  @override

  Logout (BuildContext  context){
  FirebaseAuth.instance.signOut();
  // FirebaseUser user = FirebaseAuth.instance.currentUser;
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DefaultTabControllerExample(),
    ));
  }
  Loging (BuildContext context) => {
    Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DefaultTabControllerExample(),
    )),
  };


  @override
  Widget build(BuildContext context) {

final TextEditingController searchcController = TextEditingController();


 void search(){
final String searchc = searchcController.text;

                              FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
         showDialog(context: context, builder: (context){
           return AlertDialog(
             title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Issues: ", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
          content: Center(
            child: Text("Currently you are Logout! | Login Now", style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.black
                        ),),
          ),
          actions: [
                                                      Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DefaultTabControllerExample()));
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Login now",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
        SizedBox(height: 10,),
                                          Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                        Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Cancel",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
          ],
           );
        });
             } else {
              // Conditions:
  if (searchc=="Python" || searchc == "Python Programming" || searchc=="python" || searchc == "python programming" || searchc=="pythonprogramming" || searchc == "PythonProgramming" || searchc=="Python Mcqs" || searchc == "Python Programming Mcqs" || searchc=="PythonMcqs" || searchc == "PythonProgrammingMcqs"|| searchc=="python mcqs" || searchc == "python programming mcqs" || searchc=="pythonmcqs" || searchc == "pythonprogrammingmcqs" || searchc=="Pythonmcqs" || searchc == "Pythonprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Python()));
  }
  else if(searchc=="Python Quiz" || searchc == "Python Programming Quiz" || searchc=="PythonQuiz" || searchc == "PythonProgrammingQuiz"|| searchc=="python quiz" || searchc == "python programming quiz" || searchc=="pythonquiz" || searchc == "pythonprogrammingquiz" || searchc=="Pythonquiz" || searchc == "Pythonprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler10()));
  }
  else if(searchc=="JavaScript" || searchc=="Javascript" || searchc == "JavaScript Programming" || searchc=="Javascript Programming" || searchc=="javascript" || searchc == "javascript programming" || searchc=="javascriptprogramming" || searchc == "JavaScriptProgramming" || searchc == "JavascriptProgramming" || searchc=="JavaScript Mcqs" || searchc=="Javascript Mcqs" || searchc == "JavaScript Programming Mcqs" || searchc == "Javascript Programming Mcqs" || searchc=="JavaScriptMcqs" || searchc=="JavascriptMcqs" || searchc == "JavaScriptProgrammingMcqs" || searchc == "JavascriptProgrammingMcqs" || searchc=="javascript mcqs" || searchc == "javascript programming mcqs" || searchc=="javascriptmcqs" || searchc == "javascriptprogrammingmcqs" || searchc=="Javascriptmcqs" || searchc=="JavaScriptmcqs" || searchc == "JavaScriptprogrammingmcqs" || searchc == "Javascriptprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JavaScript()));
  }
  else if(searchc=="JavaScript Quiz" || searchc=="Javascript Quiz" || searchc == "JavaScript Programming Quiz" || searchc == "Javascript Programming Quiz" || searchc=="JavaScriptQuiz" || searchc=="JavascriptQuiz" || searchc == "JavaScriptProgrammingQuiz"  || searchc == "JavascriptProgrammingQuiz" || searchc=="javascript quiz" || searchc == "javascript programming quiz" || searchc=="javascriptquiz" || searchc == "javascriptprogrammingquiz" || searchc=="JavaScriptquiz" || searchc=="Javascriptquiz" || searchc == "JavaScriptprogrammingquiz" || searchc == "Javascriptprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler7()));
  }
  else if(searchc=="ReactNative" || searchc=="React Native" || searchc=="Reactnative" || searchc=="React native" || searchc == "React Native Programming" || searchc == "ReactNative Programming" || searchc=="Reactnative Programming" || searchc == "React native Programming" || searchc=="reactnative" || searchc=="react native" || searchc == "reactnative programming" || searchc == "react native programming" || searchc=="reactnativeprogramming" || searchc=="react nativeprogramming" || searchc == "ReactNativeProgramming" || searchc == "React NativeProgramming" || searchc == "ReactnativeProgramming" || searchc == "React nativeProgramming" || searchc=="ReactNative Mcqs" || searchc=="React Native Mcqs" || searchc=="Reactnative Mcqs" || searchc=="React native Mcqs" || searchc == "ReactNative Programming Mcqs" || searchc == "React Native Programming Mcqs" || searchc == "React native Programming Mcqs" || searchc == "Reactnative Programming Mcqs" || searchc=="ReactNativeMcqs" || searchc=="React NativeMcqs" || searchc=="ReactnativeMcqs" || searchc=="React nativeMcqs" || searchc == "ReactNativeProgrammingMcqs" || searchc == "React NativeProgrammingMcqs" || searchc == "ReactnativeProgrammingMcqs" || searchc == "React nativeProgrammingMcqs" || searchc=="reactnative mcqs" || searchc=="react native mcqs" || searchc == "reactnative programming mcqs" || searchc == "react native programming mcqs" || searchc=="reactnativemcqs" || searchc=="react nativemcqs" || searchc == "reactnativeprogrammingmcqs" || searchc == "react nativeprogrammingmcqs" || searchc=="Reactnativemcqs" || searchc=="React nativemcqs" || searchc=="ReactNativemcqs" || searchc=="React Nativemcqs" || searchc == "ReactNativeprogrammingmcqs" || searchc == "React Nativeprogrammingmcqs" || searchc == "Reactnativeprogrammingmcqs" || searchc == "React nativeprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JavaScript()));
  }
  else if(searchc=="ReactNative Quiz" || searchc=="React Native Quiz" || searchc=="Reactnative Quiz" || searchc=="React native Quiz" || searchc == "ReactNative Programming Quiz" || searchc == "React Native Programming Quiz" || searchc == "React native Programming Quiz" || searchc == "Reactnative Programming Quiz" || searchc=="ReactNativeQuiz" || searchc=="React NativeQuiz" || searchc=="ReactnativeQuiz" || searchc=="React nativeQuiz" || searchc == "ReactNativeProgrammingQuiz" || searchc == "React NativeProgrammingQuiz" || searchc == "ReactnativeProgrammingQuiz" || searchc == "React nativeProgrammingQuiz" || searchc=="reactnative quiz" || searchc=="react native quiz" || searchc == "reactnative programming quiz" || searchc == "react native programming quiz" || searchc=="reactnativequiz" || searchc=="react nativequiz" || searchc == "reactnativeprogrammingquiz" || searchc == "react nativeprogrammingquiz" || searchc=="Reactnativequiz" || searchc=="React nativequiz" || searchc=="ReactNativequiz" || searchc=="React Nativequiz" || searchc == "ReactNativeprogrammingquiz" || searchc == "React Nativeprogrammingquiz" || searchc == "Reactnativeprogrammingquiz" || searchc == "React nativeprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler11()));
  }
  else if(searchc=="Flutter" || searchc == "Flutter Programming" || searchc=="flutter" || searchc == "flutter programming" || searchc=="flutterprogramming" || searchc == "FlutterProgramming" || searchc=="Flutter Mcqs" || searchc == "Flutter Programming Mcqs" || searchc=="FlutterMcqs" || searchc == "FlutterProgrammingMcqs"|| searchc=="flutter mcqs" || searchc == "flutter programming mcqs" || searchc=="fluttermcqs" || searchc == "flutterprogrammingmcqs" || searchc=="Fluttermcqs" || searchc == "Flutterprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Flutter()));
  }
  else if(searchc=="Flutter Quiz" || searchc == "Flutter Programming Quiz" || searchc=="FlutterQuiz" || searchc == "FlutterProgrammingQuiz"|| searchc=="flutter quiz" || searchc == "flutter programming quiz" || searchc=="flutterquiz" || searchc == "flutterprogrammingquiz" || searchc=="Flutterquiz" || searchc == "Flutterprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler4()));
  }
  else if(searchc=="Java" || searchc == "Java Programming" || searchc=="java" || searchc == "java programming" || searchc=="javaprogramming" || searchc == "JavaProgramming" || searchc=="Java Mcqs" || searchc == "Java Programming Mcqs" || searchc=="JavaMcqs" || searchc == "JavaProgrammingMcqs"|| searchc=="java mcqs" || searchc == "java programming mcqs" || searchc=="javamcqs" || searchc == "javaprogrammingmcqs" || searchc=="Javamcqs" || searchc == "Javaprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Java()));
  }
  else if(searchc=="Java Quiz" || searchc == "Java Programming Quiz" || searchc=="JavaQuiz" || searchc == "JavaProgrammingQuiz"|| searchc=="java quiz" || searchc == "java programming quiz" || searchc=="javaquiz" || searchc == "javaprogrammingquiz" || searchc=="Javaquiz" || searchc == "Javaprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler6()));
  }
  else if(searchc=="C++" || searchc == "C++ Programming" || searchc=="c++" || searchc == "c++ programming" || searchc=="c++programming" || searchc == "C++Programming" || searchc=="C++ Mcqs" || searchc == "C++ Programming Mcqs" || searchc=="C++Mcqs" || searchc == "C++ProgrammingMcqs"|| searchc=="c++ mcqs" || searchc == "c++ programming mcqs" || searchc=="c++mcqs" || searchc == "c++programmingmcqs" || searchc=="C++mcqs" || searchc == "C++programmingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => C_Plus()));
  }
  else if(searchc=="C++ Quiz" || searchc == "C++ Programming Quiz" || searchc=="C++Quiz" || searchc == "C++ProgrammingQuiz"|| searchc=="c++ quiz" || searchc == "c++ programming quiz" || searchc=="c++quiz" || searchc == "c++programmingquiz" || searchc=="C++quiz" || searchc == "C++programmingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler0()));
  }
  else if(searchc=="C#" || searchc == "C# Programming" || searchc=="c#" || searchc == "c# programming" || searchc=="c#programming" || searchc == "C#Programming" || searchc=="C# Mcqs" || searchc == "C# Programming Mcqs" || searchc=="C#Mcqs" || searchc == "C#ProgrammingMcqs"|| searchc=="c# mcqs" || searchc == "c# programming mcqs" || searchc=="c#mcqs" || searchc == "c#programmingmcqs" || searchc=="C#mcqs" || searchc == "C#programmingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CSharp()));
  }
  else if(searchc=="C# Quiz" || searchc == "C# Programming Quiz" || searchc=="C#Quiz" || searchc == "C#ProgrammingQuiz"|| searchc=="c# quiz" || searchc == "c# programming quiz" || searchc=="c#quiz" || searchc == "c#programmingquiz" || searchc=="C#quiz" || searchc == "C#programmingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler1()));
  }
  else if(searchc=="SQL" || searchc == "SQL Programming" || searchc=="sql" || searchc == "sql programming" || searchc=="sqlprogramming" || searchc == "SQLProgramming" || searchc=="SQL Mcqs" || searchc == "SQL Programming Mcqs" || searchc=="SQLMcqs" || searchc == "SQLProgrammingMcqs"|| searchc=="sql mcqs" || searchc == "sql programming mcqs" || searchc=="sqlmcqs" || searchc == "sqlprogrammingmcqs" || searchc=="SQLmcqs" || searchc == "SQLprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SQL()));
  }
  else if(searchc=="SQL Quiz" || searchc == "SQL Programming Quiz" || searchc=="SQLQuiz" || searchc == "SQLProgrammingQuiz"|| searchc=="sql quiz" || searchc == "sql programming quiz" || searchc=="sqlquiz" || searchc == "sqlprogrammingquiz" || searchc=="SQLquiz" || searchc == "SQLprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler13()));
  }
  else if(searchc=="MachineLearning" || searchc=="Machine Learning" || searchc=="Machinelearning" || searchc=="Machine learning" || searchc == "Machine Learning Programming" || searchc == "MachineLearning Programming" || searchc=="Machinelearning Programming" || searchc == "Machine learning Programming" || searchc=="machinelearning" || searchc=="machine learning" || searchc == "machinelearning programming" || searchc == "machine learning programming" || searchc=="machinelearningprogramming" || searchc=="machinelearningprogramming" || searchc == "MachineLearningProgramming" || searchc == "Machine LearningProgramming" || searchc == "MachinelearningProgramming" || searchc == "Machine learningProgramming" || searchc=="MachineLearning Mcqs" || searchc=="Machine Learning Mcqs" || searchc=="Machinelearning Mcqs" || searchc=="Machine learning Mcqs" || searchc == "MachineLearning Programming Mcqs" || searchc == "Machine Learning Programming Mcqs" || searchc == "Machine learning Programming Mcqs" || searchc == "Machinelearning Programming Mcqs" || searchc=="MachineLearningMcqs" || searchc=="Machine LearningMcqs" || searchc=="MachinelearningMcqs" || searchc=="Machine learningMcqs" || searchc == "MachineLearningProgrammingMcqs" || searchc == "Machine LearningProgrammingMcqs" || searchc == "MachinelearningProgrammingMcqs" || searchc == "Machine learningProgrammingMcqs" || searchc=="machinelearning mcqs" || searchc=="machine learning mcqs" || searchc == "machinelearning programming mcqs" || searchc == "machine learning programming mcqs" || searchc=="machinelearningmcqs" || searchc=="machine learningmcqs" || searchc == "machinelearningprogrammingmcqs" || searchc == "machine learningprogrammingmcqs" || searchc=="Machinelearningmcqs" || searchc=="Machine learningmcqs" || searchc=="MachineLearningmcqs" || searchc=="Machine Learningmcqs" || searchc == "MachineLearningprogrammingmcqs" || searchc == "Machine Learningprogrammingmcqs" || searchc == "Machinelearningprogrammingmcqs" || searchc == "Machine learningprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JavaScript()));
  }
  else if(searchc=="MachineLearning Quiz" || searchc=="Machine Learning Quiz" || searchc=="Machinelearning Quiz" || searchc=="Machine learning Quiz" || searchc == "MachineLearning Programming Quiz" || searchc == "Machine Learning Programming Quiz" || searchc == "Machine learning Programming Quiz" || searchc == "Machinelearning Programming Quiz" || searchc=="MachineLearningQuiz" || searchc=="Machine LearningQuiz" || searchc=="MachinelearningQuiz" || searchc=="Machine learningQuiz" || searchc == "MachineLearningProgrammingQuiz" || searchc == "Machine LearningProgrammingQuiz" || searchc == "MachinelearningProgrammingQuiz" || searchc == "Machine learningProgrammingQuiz" || searchc=="machinelearning quiz" || searchc=="machine learning quiz" || searchc == "machinelearning programming quiz" || searchc == "machine learning programming quiz" || searchc=="machinelearningquiz" || searchc=="machine learningquiz" || searchc == "machinelearningprogrammingquiz" || searchc == "machine learningprogrammingquiz" || searchc=="Machinelearningquiz" || searchc=="Machine learningquiz" || searchc=="MachineLearningquiz" || searchc=="Machine Learningquiz" || searchc == "MachineLearningprogrammingquiz" || searchc == "Machine Learningprogrammingquiz" || searchc == "Machinelearningprogrammingquiz" || searchc == "Machine learningprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler8()));
  }
  else if(searchc=="ReactJs" || searchc=="React Js" || searchc=="Reactjs" || searchc=="React js" || searchc == "React Js Programming" || searchc == "ReactJs Programming" || searchc=="Reactjs Programming" || searchc == "React js Programming" || searchc=="reactjs" || searchc=="react js" || searchc == "reactjs programming" || searchc == "react js programming" || searchc=="reactjsprogramming" || searchc=="react jsprogramming" || searchc == "ReactJsProgramming" || searchc == "React JsProgramming" || searchc == "ReactjsProgramming" || searchc == "React jsProgramming" || searchc=="ReactJs Mcqs" || searchc=="React Js Mcqs" || searchc=="Reactjs Mcqs" || searchc=="React js Mcqs" || searchc == "ReactJs Programming Mcqs" || searchc == "React Js Programming Mcqs" || searchc == "React js Programming Mcqs" || searchc == "Reactjs Programming Mcqs" || searchc=="ReactJsMcqs" || searchc=="React JsMcqs" || searchc=="ReactjsMcqs" || searchc=="React jsMcqs" || searchc == "ReactJsProgrammingMcqs" || searchc == "React JsProgrammingMcqs" || searchc == "ReactjsProgrammingMcqs" || searchc == "React jsProgrammingMcqs" || searchc=="reactjs mcqs" || searchc=="react js mcqs" || searchc == "reactjs programming mcqs" || searchc == "react js programming mcqs" || searchc=="reactjsmcqs" || searchc=="react jsmcqs" || searchc == "reactjsprogrammingmcqs" || searchc == "react jsprogrammingmcqs" || searchc=="Reactjsmcqs" || searchc=="React jsmcqs" || searchc=="ReactJsmcqs" || searchc=="React Jsmcqs" || searchc == "ReactJsprogrammingmcqs" || searchc == "React Jsprogrammingmcqs" || searchc == "Reactjsprogrammingmcqs" || searchc == "React jsprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => React()));
  }
  else if(searchc=="ReactJs" || searchc=="React Js" || searchc=="Reactjs" || searchc=="React js" || searchc == "React Js Programming" || searchc == "ReactJs Programming" || searchc=="Reactjs Programming" || searchc == "React js Programming" || searchc=="reactjs" || searchc=="react js" || searchc == "reactjs programming" || searchc == "react js programming" || searchc=="reactjsprogramming" || searchc=="react jsprogramming" || searchc == "ReactJsProgramming" || searchc == "React JsProgramming" || searchc == "ReactjsProgramming" || searchc == "React jsProgramming" || searchc=="ReactJs Mcqs" || searchc=="React Js Mcqs" || searchc=="Reactjs Mcqs" || searchc=="React js Mcqs" || searchc == "ReactJs Programming Mcqs" || searchc == "React Js Programming Mcqs" || searchc == "React js Programming Mcqs" || searchc == "Reactjs Programming Mcqs" || searchc=="ReactJsMcqs" || searchc=="React JsMcqs" || searchc=="ReactjsMcqs" || searchc=="React jsMcqs" || searchc == "ReactJsProgrammingMcqs" || searchc == "React JsProgrammingMcqs" || searchc == "ReactjsProgrammingMcqs" || searchc == "React jsProgrammingMcqs" || searchc=="reactjs mcqs" || searchc=="react js mcqs" || searchc == "reactjs programming mcqs" || searchc == "react js programming mcqs" || searchc=="reactjsmcqs" || searchc=="react jsmcqs" || searchc == "reactjsprogrammingmcqs" || searchc == "react jsprogrammingmcqs" || searchc=="Reactjsmcqs" || searchc=="React jsmcqs" || searchc=="ReactJsmcqs" || searchc=="React Jsmcqs" || searchc == "ReactJsprogrammingmcqs" || searchc == "React Jsprogrammingmcqs" || searchc == "Reactjsprogrammingmcqs" || searchc == "React jsprogrammingmcqs"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler12()));
  }
  else if(searchc=="PHP" || searchc == "PHP Programming" || searchc=="php" || searchc == "php programming" || searchc=="phpprogramming" || searchc == "PHPProgramming" || searchc=="PHP Mcqs" || searchc == "PHP Programming Mcqs" || searchc=="PHPMcqs" || searchc == "PHPProgrammingMcqs"|| searchc=="php mcqs" || searchc == "php programming mcqs" || searchc=="phpmcqs" || searchc == "phpprogrammingmcqs" || searchc=="PHPmcqs" || searchc == "PHPprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PHP()));
  }
  else if(searchc=="PHP Quiz" || searchc == "PHP Programming Quiz" || searchc=="PHPQuiz" || searchc == "PHPProgrammingQuiz"|| searchc=="php quiz" || searchc == "php programming quiz" || searchc=="phpquiz" || searchc == "phpprogrammingquiz" || searchc=="PHPquiz" || searchc == "PHPprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler9()));
  }
  else if(searchc=="HTML" || searchc == "HTML Programming" || searchc=="html" || searchc == "html programming" || searchc=="htmlprogramming" || searchc == "HTMLProgramming" || searchc=="HTML Mcqs" || searchc == "HTML Programming Mcqs" || searchc=="HTMLMcqs" || searchc == "HTMLProgrammingMcqs"|| searchc=="html mcqs" || searchc == "html programming mcqs" || searchc=="htmlmcqs" || searchc == "htmlprogrammingmcqs" || searchc=="HTMLmcqs" || searchc == "HTMLprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HTML()));
  }
  else if(searchc=="HTML Quiz" || searchc == "HTML Programming Quiz" || searchc=="HTMLQuiz" || searchc == "HTMLProgrammingQuiz"|| searchc=="html quiz" || searchc == "html programming quiz" || searchc=="htmlquiz" || searchc == "htmlprogrammingquiz" || searchc=="HTMLquiz" || searchc == "HTMLprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler5()));
  }
  else if(searchc=="Dart" || searchc == "Dart Programming" || searchc=="dart" || searchc == "dart programming" || searchc=="dartprogramming" || searchc == "DartProgramming" || searchc=="Dart Mcqs" || searchc == "Dart Programming Mcqs" || searchc=="DartMcqs" || searchc == "DartProgrammingMcqs"|| searchc=="dart mcqs" || searchc == "dart programming mcqs" || searchc=="dartmcqs" || searchc == "dartprogrammingmcqs" || searchc=="Dartmcqs" || searchc == "Dartprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Dart()));
  }
  else if(searchc=="Dart Quiz" || searchc == "Dart Programming Quiz" || searchc=="DartQuiz" || searchc == "DartProgrammingQuiz"|| searchc=="dart quiz" || searchc == "dart programming quiz" || searchc=="dartquiz" || searchc == "dartprogrammingquiz" || searchc=="Dartquiz" || searchc == "Dartprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler3()));
  }
  else if(searchc=="CSS" || searchc == "CSS Programming" || searchc=="css" || searchc == "css programming" || searchc=="cssprogramming" || searchc == "CSSProgramming" || searchc=="CSS Mcqs" || searchc == "CSS Programming Mcqs" || searchc=="CSSMcqs" || searchc == "CSSProgrammingMcqs"|| searchc=="css mcqs" || searchc == "css programming mcqs" || searchc=="cssmcqs" || searchc == "cssprogrammingmcqs" || searchc=="CSSmcqs" || searchc == "CSSprogrammingmcqs"){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CSS()));
  }
  else if(searchc=="CSS Quiz" || searchc == "CSS Programming Quiz" || searchc=="CSSQuiz" || searchc == "CSSProgrammingQuiz"|| searchc=="css quiz" || searchc == "css programming quiz" || searchc=="cssquiz" || searchc == "cssprogrammingquiz" || searchc=="CSSquiz" || searchc == "CSSprogrammingquiz"){
          Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quizzler5()));
  }

  else{
    Navigator.push(context, MaterialPageRoute(builder: (context) => Func()));
  }
        
          print('User is signed in!');
      }
    });
  }


    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | Search",
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.white, 
                     fontWeight: FontWeight.bold))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  width: 36,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
                    drawer: Drawer(
              backgroundColor: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                child: Image.asset("assets/icon.png"),
              )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Home",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.home, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      home(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Notifications",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.notifications, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      notifications(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Search",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.search, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      search();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Quiz Test",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.quiz, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      quiz(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Profile",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.home, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      profile(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.notifications, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      policy(context);
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              
              FirebaseAuth.instance.currentUser == null
                  ? 
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Login",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.login, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      Loging(context);
                    },
                  ),
                ),
              )
              :
                            Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50.0, bottom: 20.0),
                child: Container(
                  width: 25,
                  height: 50,
                  child: ElevatedButton.icon(
                    label: Text(
                      "Logout",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
                    ),
                    icon: Icon(Icons.logout, color: Colors.black,)  ,
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      side: BorderSide(color: Colors.black, width: 3),
                    ),
                    onPressed: () {
                      Logout(context);
                    },
                  ),
                ),
              )
            ],
          ),
        ),

        body: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                        Container(
            padding: EdgeInsets.all(10),
                          color: Colors.white,
            width: 330,
            child: TextField(
              controller: searchcController,
              style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black
                  ),
              maxLength: 50,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Search: ",
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search...",
                  hintStyle:
                      GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white
                  ),),
            ),
          ),
          SizedBox(
            height: 5,
          ),
                   Container(
                              width: 325,
                              margin: EdgeInsets.only(right: 10,left: 10, bottom: 10, top: 40),
                              height: 40,
                              child: ElevatedButton.icon(
                                label: Text(
                                  '',
                                  style: GoogleFonts.sourceSansPro(
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                icon: Icon(Icons.manage_search_rounded),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(0), // <-- Radius
                                  ),
                                  shadowColor: Colors.grey,
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  side: BorderSide(color: Colors.white, width: 3),
                                ),
                                onPressed: () {
 search();
                                },
                              ),
                            ),
 
              ],
            )
          ),
        )
          );
  }
}


class Func extends StatelessWidget {
  const Func({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
          backgroundColor: Colors.black,
         title: Center(
              child: Text("General Knowledge | Search",
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.white, 
                     fontWeight: FontWeight.bold))),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  width: 36,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Center(child: Text("Page Not Found!", style: GoogleFonts.sourceSansPro(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   fontSize: 10,
                 ),)),
SizedBox(height: 10),

                                    Container(
                              width: 110,
                              margin: EdgeInsets.only(right: 10,left: 10, bottom: 10, top: 40),
                              height: 43,
                              child: ElevatedButton.icon(
                                label: Text(
                                  'Go Back',
                                  style: GoogleFonts.sourceSansPro(
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                icon: Icon(Icons.arrow_left_rounded),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(0), // <-- Radius
                                  ),
                                  shadowColor: Colors.grey,
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  side: BorderSide(color: Colors.white, width: 3),
                                ),
                                onPressed: () {
                                   Navigator.pop(context);
                                },
                              ),
                            ),
                
               ],
             )
          ),
        ),
      )
    );
  }
}