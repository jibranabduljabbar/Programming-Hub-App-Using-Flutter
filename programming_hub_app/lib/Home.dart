// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:general_knowledge/Categories/C++.dart';
import 'package:general_knowledge/Categories/Python.dart';
import 'package:general_knowledge/Categories/CSharp.dart';
import 'package:general_knowledge/Categories/JavaScript.dart';
import 'package:general_knowledge/Categories/ReactNative.dart';
import 'package:general_knowledge/Categories/Flutter.dart';
import 'package:general_knowledge/Categories/MachineLearning.dart';
import 'package:general_knowledge/Categories/SQL.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/About_Policies.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Notifications.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Profile.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Search.dart';
import 'Categories/MachineLearning.dart';
import 'package:general_knowledge/Categories/Java.dart';
import 'package:general_knowledge/Categories/ReactJs.dart';
import 'Categories/PHP.dart';
import 'Categories/HTML.dart';
import 'Categories/Dart.dart';
import 'Categories/CSS.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/Login.dart';
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
    'Python Programming Mcqs',
    'JavaScript Algorithms Mcqs',
    'Flutter Programming Mcqs',
    'React Native Programming',
    'Java Programming Mcqs',
    'C++ Programming Mcqs',
    'C# Programming Mcqs',
    'SQL Database Mcqs',
    'Machine Learning Mcqs',
    'React Js Programming Mcqs',
    'PHP Programming Mcqs',
    'HTML Fundamentals Mcqs',
    'Dart Programming Mcqs',
    'CSS Fundamentals Mcqs',
  ];

  var imgFuncLst = [
    Python(),
    JavaScript(),
    Flutter(),
    React_Native(),
    Java(),
    C_Plus(),
    CSharp(),
    SQL(),
    Machine_Learning(),
    React(),
    PHP(),
    HTML(),
    Dart(),
    CSS()
  ];

class Home extends StatelessWidget{
  
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

  Widget build(BuildContext context){
  
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          // leading: Container(margin: EdgeInsets.all(10),width: 40,height: 50,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100)),child:  Icon(Icons.menu, color: Colors.white, )),
          title: Center(child: Text("Programming Hub | Home",style: GoogleFonts.sourceSansPro(
            color: Colors.white,
            fontWeight: FontWeight.bold
            ))),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(onTap: () => { FirebaseAuth.instance.currentUser == null ? Loging(context) : Logout(context) },child: Container(width: 36,height: 50,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(100)),child: Icon(FirebaseAuth.instance.currentUser == null ? Icons.login : Icons.logout_rounded, color: Colors.white,))),
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
                      search(context);
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
                        itemCount: imgLst.length,
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

// Widget btn(name, funtion, iconname){
//   return Padding(
//                 padding: const EdgeInsets.only(
//                     left: 50.0, right: 50.0, bottom: 20.0),
//                 child: Container(
//                   width: 25,
//                   height: 50,
//                   child: ElevatedButton.icon(
//                     label: Text(
//                       name,
//                       style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),
//                     ),
//                     icon: iconname == "Home" ? Icon(Icons.home, color: Colors.black,) : iconname == "Notification" ? Icon(Icons.notifications, color: Colors.black) : iconname == "Search" ? Icon(Icons.search, color: Colors.black) : iconname == "Quiz" ? Icon(Icons.quiz, color: Colors.black) : iconname == "Profile" ? Icon(Icons.person, color: Colors.black) : iconname == "Policy" ? Icon(Icons.policy, color: Colors.black) : now == "login" ? Icon(Icons.login, color: Colors.black) : iconname == "logout" ? Icon(Icons.logout, color: Colors.black) : Icon(Icons.error, color: Colors.black)  ,
//                     style: ElevatedButton.styleFrom(
//                       shadowColor: Colors.grey,
//                       primary: Colors.white,
//                       onPrimary: Colors.white,
//                       side: BorderSide(color: Colors.black, width: 3),
//                     ),
//                     onPressed: () {
//                       funtion();
//                     },
//                   ),
//                 ),
//               );
// }

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
              ),)
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
