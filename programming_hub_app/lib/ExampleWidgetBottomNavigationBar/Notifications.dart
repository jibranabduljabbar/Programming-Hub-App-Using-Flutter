import 'package:flutter/material.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/About_Policies.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Profile.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Search.dart';
import 'package:general_knowledge/Home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

var count = 1;

class _Screen2State extends State<Screen2> {
  Notifications() {
    setState(() {
      count = 0;
    });
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Notificationss()));
  }

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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | Notification",
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/icon.png'),
                ),
                title: Text(
                  "Programming Hub: ",
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.white, 
                      fontWeight: count == 1 ? FontWeight.bold : FontWeight.normal),
                ),
                subtitle: Text(
                  "Welcome to Programming Hub App ",
                  style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontWeight: count == 1 ? FontWeight.bold : FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                trailing: CircleAvatar(
                  child: Text(
                    count.toString(),
                    style: GoogleFonts.sourceSansPro(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  radius: 15,
                  backgroundColor: Colors.green,
                ),
                onTap: () => Notifications(),
              ),
            ),
          ),
        ));
  }
}

class Notificationss extends StatelessWidget {
  const Notificationss({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | Notification",
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.white, fontWeight: FontWeight.bold))),
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
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/icon.png'),
                    ),
                    title: Text(
                      "Programming Hub: ",
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white, 
                          fontWeight: FontWeight.bold),
                    ),
                  ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text(
                        "Welcome to Programming Hub App ",
                        style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                    "We're glad you are here! With Programming Hub App you have now access to 1000+ Hours of learning content and Interactive live MCQS from some of the top faculties and industry experts for free.",
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                    "Getting started is simple",
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),),
                        ),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                    "Choose any MCQS that interests you from Programming Hub App. Learn at your own pace, complete your MCQS, and Test Your Skills Using Quiz. So, what are you waiting for?",
                    style: GoogleFonts.sourceSansPro(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),),
                        ),
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
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}