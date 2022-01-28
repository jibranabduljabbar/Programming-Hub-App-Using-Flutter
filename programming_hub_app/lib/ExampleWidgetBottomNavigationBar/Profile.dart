import 'dart:async';
import 'package:flutter/material.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/About_Policies.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Notifications.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Search.dart';
import 'package:general_knowledge/Home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

String name = "Programming Hub";
String email = "programminghub@gmail.com";
String bio = "App - Author";
String company = "Company";
String location = "Karachi - Pakistan";
String url = "https://img.utdstc.com/icon/b4d/eb0/b4deb0b4b0b268d0472c665a032a6793af6cf8e524608f91aedff3579971a60d:200";
String work = "";

class _Screen4State extends State<Screen4> {


    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController companyController = TextEditingController();
    final TextEditingController locationController = TextEditingController();
    final TextEditingController bioController = TextEditingController();


  void getData() async {
    User? user = await FirebaseAuth.instance.currentUser;
    var vari = await FirebaseFirestore.instance.collection("users").doc(user!.uid).get();
    if (vari.data()?['username'] == null) {
          setState(() {
      name = "Programming Hub";
      email = "programminghub@gmail.com";
      bio = "App - Author";
      company = "Company";
      location = "Karachi Pakistan";
      url = "https://img.utdstc.com/icon/b4d/eb0/b4deb0b4b0b268d0472c665a032a6793af6cf8e524608f91aedff3579971a60d:200";
          getData();
          run();
          setState(() {
            work = "Working";
          });          
    });  
    }





    else{
    setState(() {
      name = vari.data()?['username'];
      email = vari.data()?['email'];
      bio = vari.data()?['bio'];
      company = vari.data()?['company'];
      location = vari.data()?['location'];
      url = vari.data()?['url'];
    });  
    }    
  }

void initState(){
  getData();
  super.initState();
}

run (){
void initState(){
  getData();
  super.initState();
}
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

Edit() async {

      final String eusername = usernameController.text;
      final String eemail = emailController.text;
      final String ecompany = companyController.text;
      final String elocation = locationController.text;
      final String ebio = bioController.text;

      if (eusername == "" || eemail == "" || ecompany == "" || elocation == "" || ebio == ""){
        showDialog(context: context, 
        builder: (context){
          return AlertDialog(
          title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Issues:", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
          content: Center(
            child: Text("All Fields are Required!", style: GoogleFonts.sourceSansPro(
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
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "OK",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
          ],
      );}); 
      }
      else{
    User? user = await FirebaseAuth.instance.currentUser;
    var vari = await FirebaseFirestore.instance.collection("users").doc(user!.uid).set({
      'username': eusername,
      'email': eemail,
      'bio': ebio,
      'company': ecompany,
      'location': elocation,
    });
    // getData();
      }
} 

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | Profile",
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
              child: Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(top: 50),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(url),
                          ),
                        ), 
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, right: 10.0, top: 10,),
                        child: Container(
                          child: Text(name, style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 1,),
                        child: Container(
                          child: Text(email, style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 10
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Center(
                            child: Text(bio, style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15
                              ),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text(location, style: GoogleFonts.sourceSansPro(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10
                          ),
                        ),
                      trailing: Text(company, style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 10
                        ),
                      ),
                      ),
                      Container(
                                width: 365,
                                margin: EdgeInsets.only(right: 10,left: 10, bottom: 10, top: 40),
                                height: 55,
                                child: ElevatedButton.icon(
                                  label: Text(
                                    'Edit',
                                    style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                  icon: Icon(Icons.edit_outlined,size: 15,color: Colors.black,),
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
                                   showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Edit Detail", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                                Container(
                            width: 330,
                            child: TextField(
                              controller: usernameController,
                              style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black
                                  ),
                              maxLength: 30,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Username: ",
                                  prefixIcon: Icon(Icons.person_pin_rounded),
                                  hintText: "Username...",
                                  hintStyle:
                      GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white
                                  ),),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 330,
                            child: TextField(
                              controller: emailController,
                              style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black
                                  ),
                              maxLength: 30,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Email Address: ",
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Email Address...",
                                  hintStyle:
                      GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white
                                  ),),
                            ),
                          ),
                                  SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 330,
                            child: TextField(
                              controller: companyController,
                              style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black
                                  ),
                              maxLength: 30,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Company: ",
                                  prefixIcon: Icon(Icons.home_work_outlined),
                                  hintText: "Company...",
                                  hintStyle:
                      GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white
                                  ),),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 330,
                            child: TextField(
                              controller: locationController,
                              style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black
                                  ),
                              maxLength: 50,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Location: ",
                                  prefixIcon: Icon(Icons.location_on_outlined),
                                  hintText: "Location...",
                                  hintStyle:
                      GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white
                                  ),),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 330,
                            child: TextField(
                              controller: bioController,
                              style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black
                                  ),
                              maxLength: 100,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Bio: ",
                                  prefixIcon: Icon(Icons.description_outlined),
                                  hintText: "Bio...",
                                  hintStyle:
                      GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.white
                                  ),),
                            ),
                          ),
                  
                          SizedBox(
                            height: 35,
                          ),
                  
                  
                      ],
                    ),
                  ),
                  actions: [
                            Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Edit();
  Timer.periodic(Duration(seconds: 1), (Timer t) => { 
getData(),
run(),
setState(() {
  work = "Working";  
})
  });
  },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Update",
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
                                  },
                                ),
                              ),
                    ],
                  )
             ),
              ),
            ),
          ),
        )
          );
  }
}
