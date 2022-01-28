import 'package:general_knowledge/DefaultTabController.dart';
import 'package:flutter/material.dart';
import 'package:general_knowledge/Nav.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Splash extends StatelessWidget {

void CheckUserIsSignInOurNot(BuildContext context){
    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DefaultTabControllerExample()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNavigationBarExample()));
        print('User is signed in!');
      }
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 150),
          child: Column(
            children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage("assets/icon.png"),
                      ),
                      SizedBox(height: 30,),
                      Text("Programming Hub", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    Container(
                              width: 365,
                              margin: EdgeInsets.only(right: 10,left: 10, bottom: 10, top: 40),
                              height: 55,
                              child: ElevatedButton.icon(
                                label: Text(
                                  '',
                                  style: GoogleFonts.sourceSansPro(
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                icon: Icon(Icons.arrow_right_outlined),
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
                                  CheckUserIsSignInOurNot(context);
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