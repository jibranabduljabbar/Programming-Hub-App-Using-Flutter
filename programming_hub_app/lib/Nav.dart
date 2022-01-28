import 'package:flutter/material.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/Login.dart';

// Example Of Screens:

import 'Home.dart';
import 'ExampleWidgetBottomNavigationBar/Notifications.dart';
import 'ExampleWidgetBottomNavigationBar/Search.dart';
import 'ExampleWidgetBottomNavigationBar/Profile.dart';
import 'ExampleWidgetBottomNavigationBar/About_Policies.dart';
import 'ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarExample extends StatefulWidget {
  @override
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

  var icon = 0;

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  Widget currentScreen = Home();
  var currentTab = 0;
  var currentTa = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: PageStorageBucket(),
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
              color: Colors.black,
              height: 55,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = Home();
                            currentTab = 0;
                          },
                        );
                      },
                      child: Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.white : Colors.grey,
                      )),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
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
                setState(
                          () {
                            currentScreen = Screen2();
                            currentTab = 1;
                            currentTa = 1;
                          },
                        );

          print('User is signed in!');
      }
    });
                      },
                      child: Icon(
                        currentTa == 2 ? Icons.notifications_active : Icons.notifications,
                        color: currentTab == 1 ? Colors.white : Colors.grey,
                      )),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(
                          () {
                             currentScreen = Screen3();
                            currentTab = 2;
                          },
                        );
                      },
                      
                      child: Icon(
                        Icons.search,
                        color: currentTab == 2 ? Colors.white : Colors.grey,
                      )),
                                        MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(
                          () {
                             currentScreen = Quiz();
                            currentTab = 3;
                          },
                        );
                      },
                      child: Icon(
                        Icons.quiz_outlined,
                        color: currentTab == 3 ? Colors.white : Colors.grey,
                      )),

                      
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
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
setState(
                          () {
                            currentScreen = Screen4();
                            currentTab =
                            4;
                          },
                        );
          print('User is signed in!');
      }
    });
                      },
                      child: Icon(
                        Icons.person,
                        color: currentTab == 4 ? Colors.white : Colors.grey,
                      )),
                  MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(
                          () {
                            currentScreen = Screen5();
                            currentTab =
                            5;
                          },
                        );
                      },
                      child: Icon(
                        Icons.policy,
                        color: currentTab == 5 ? Colors.white : Colors.grey,
                      ))
                      
                ],
              ))),
    );
  }
}
