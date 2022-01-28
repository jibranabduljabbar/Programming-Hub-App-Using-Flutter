// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Css/Css.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Python/Python.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Dart/Dart.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/HTML/HTML.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/JavaScript/JavaScript.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Java/Java.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Flutter/Flutter.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/MachineLearning/MachineLearning.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/SQL/SQL.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/PHP/PHP.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/CSharp/CSharp.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/C++/C++.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/ReactJs/ReactJs.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/React Native/ReactNative.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

  var imgLst = [
    Colors.blue[400],
    Colors.yellow[700],
    Colors.cyan,
    Colors.cyan[300],
    Colors.orange,
    Colors.lightBlue[800],
    Colors.purple[600],
    Colors.grey,
    Colors.green[700],
    Colors.cyan[300],
    Colors.blue[300],
    Colors.orange[800],
    Colors.teal[400],
    Colors.cyan,
  ];
  var imgNameLst = [
    'Python Programming Quiz',
    'JavaScript Algorithms Quiz',
    'Flutter Programming Quiz',
    'React Native Programming',
    'Java Programming Quiz',
    'C++ Programming Quiz',
    'C# Programming Quiz',
    'SQL Database Quiz',
    'Machine Learning Quiz',
    'React Js Programming Quiz',
    'PHP Programming Quiz',
    'HTML Fundamentals Quiz',
    'Dart Programming Quiz',
    'CSS Fundamentals Quiz',
  ];

  var imgNameLstSub = [
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
    'Just Test Yourself',
  ];

  var imgFuncLst = [
    Quizzler10(),
    Quizzler7(),
    Quizzler4(),
    Quizzler11(),
    Quizzler6(),
    Quizzler0(),
    Quizzler1(),
    Quizzler13(),
    Quizzler8(),
    Quizzler12(),
    Quizzler9(),
    Quizzler5(),
    Quizzler3(),
    Quizzler01()
  ];

class Quiz extends StatelessWidget{
  @override



  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("Programming Hub | Quiz",style: GoogleFonts.sourceSansPro(
            color: Colors.white,
            fontWeight: FontWeight.bold
            ))),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(width: 36,height: 50,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100)),child: Icon(Icons.more_vert_outlined, color: Colors.white,)),
              ),
            ],
            ),
        body: SingleChildScrollView(
          child: Container(
    color: Colors.black,
            // // decoration: BoxDecoration(
            // //   image: DecorationImage(
            // //     image: NetworkImage('https://t4.ftcdn.net/jpg/04/39/13/37/360_F_439133763_FrLdhZsd5aGC23r9ATARuKJBr8ifZjIe.jpg'), 
            // //               fit: BoxFit.cover
            // //   ),
            // //   color: Colors.white
            // ),
            child: Column(
              children: [
                              SizedBox(height: 17,),
                Column(
                  children: [
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 12.0,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10),
                        shrinkWrap: true,
                        itemCount: imgNameLst.length,
                        itemBuilder: (context, int index) {
                          return smallContainer(context,index);
                        })
                  ]
                ),
              
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          height: 45,
                          child: ElevatedButton.icon(
                            label: Text(
                              'See More',
                              style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold
                              )
                            ),
                            icon: Icon(Icons.more_sharp),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10), // <-- Radius
                              ),
                              shadowColor: Colors.grey,
                              primary: Colors.black,
                              onPrimary: Colors.white,
                              side: BorderSide(color: Colors.black, width: 3),
                            ),
                            onPressed: () {
                              print('Elevated Button');
                            },
                          ),
                        ),

              
              ],
            ),
          ),
        )
    );
  }
}

Widget smallContainer(BuildContext context,int index) {

  Move (index){
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
   Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => imgFuncLst[index],
    ));
          print('User is signed in!');
      }
    });
  }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => {
          Move(index)
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.40,
          // height: MediaQuery.of(context).size.width * 0.10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: imgLst[index],
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 3,
                    spreadRadius: 2)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.only(top: 47,bottom: 5),
                    child: Text(imgNameLst[index], style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                      color: Colors.white
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10),
                    child: Center(
                      child: Text(imgNameLstSub[index], style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.w900,
                        fontSize: 7,
                        color: Colors.white
                      ),),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Star(), Star(), Star(), Star(), Star(), Container(margin: EdgeInsets.only(left: 5),child: Text('5.0',style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.bold,fontSize: 10),))],
                  )
                ],),
                height: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: imgLst[index]
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }


 Widget Star() {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 10,
    );
  }