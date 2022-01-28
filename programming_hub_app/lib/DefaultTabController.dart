
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Login.dart';
import 'SignUp.dart';

class DefaultTabControllerExample extends StatefulWidget {
  @override
  _DefaultTabControllerExampleState createState() =>
      _DefaultTabControllerExampleState();
}

class _DefaultTabControllerExampleState
    extends State<DefaultTabControllerExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Colors.black,
          title: Center(child: Text("Programming Hub",style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.bold
          ))),
          actions: [
            Icon(Icons.more_vert,),
            SizedBox(width: 10,),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.white, // UnSet Tab Color
            labelColor: Colors.white, // Set Tab COlor.
            indicatorColor: Colors.white, // Set Underline COLOR.
            tabs: [
              Tab(
                child: Text("Login",style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white
                ),),
              ),
              Tab(
                child: Text("Sign Up",style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SignIn(),
            SignUp(),
          ],
        ),
      ),
    );
  }
}