import 'package:flutter/material.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:general_knowledge/Nav.dart';
import 'Login.dart';
import 'package:general_knowledge/home.dart';
import 'SignUp.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  var email = "";
  var password = "";

  @override
  _SignInState createState() => _SignInState();
}

    var errorsuccess = "";
    var setcolor = 11;


class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController femailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void forg() async {        
      final String eemail = femailController.text;
      await FirebaseAuth.instance.sendPasswordResetEmail(email: eemail);
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Alert", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
                  content: Center(
                    child: Text("Reset Code Has Been Send to Email Address", style: GoogleFonts.sourceSansPro(
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
        );
      });
    }

    void forgot() async {
     showDialog(context: context, 
     builder: (context) {
       return AlertDialog(
         title: AppBar(
                    automaticallyImplyLeading: false,
                    title: Center(
                      child: Text("Forgot Password:", style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                    ),
                    backgroundColor: Colors.black,
                  ),
          content:         Container(
          width: 330,
          child: TextField(
            controller: femailController,
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
          actions: [
                    Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                forg();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Forgot Password",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
          ],
       );
     }
     );
    }

    void login() async {

      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      final String email = emailController.text;
      final String password = passwordController.text;

      try {
        final UserCredential user = await auth.signInWithEmailAndPassword(
            email: email, password: password);
        final DocumentSnapshot snapshot =
            await db.collection("users").doc(user.user!.uid).get();
        
        final data = snapshot.data() as Map<String, dynamic>;

        print("User Is Logged In!");
        print(data["username"]);
        print(data["email"]);

        setState(() {
          errorsuccess = "${data["username"]} Succussfully Login!";
          setcolor = 5;
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BottomNavigationBarExample()));
      } catch (e) {
        print("Error");
        errorsuccess = "Email & Password Is Incorrect!";
        setcolor = 3;

        emailController.text = "";
        passwordController.text = "";
        // errorsuccess = "Email & Password Is Incorrect!";
        setState(() {
          errorsuccess = "Email & Password Is Incorrect!";
          setcolor = 3;
        });

      }
    }
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 40,
        ),
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('assets/icon.png'),
        ),
        SizedBox(
          height: 50,
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
            controller: passwordController,
            style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black
                ),
            maxLength: 30,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password: ",
                prefixIcon: Icon(Icons.lock),
                hintText: "Password...",
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
        Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                login();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Sign In",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
        SizedBox(
          height: 10,
        ),
                Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                forgot();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Forgot Password",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: 300,
          height: 50,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: setcolor > 10 ? Colors.white : setcolor == 5 ? Colors.green : Colors.red,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              errorsuccess,
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 9,
                  color: Colors.white
                ),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        TextButton.icon(
            label: Text(
              "Don't have account? Click here to Sign Up",
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black
                ),
            ),
            icon: Icon(
              Icons.app_registration_rounded,
              size: 15.0,
            ),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DefaultTabControllerExample()));
            }),
        SizedBox(
          height: 0,
        ),
        TextButton.icon(
            label: Text(
              'Skipped',
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black
                ),
            ),
            icon: Icon(
              Icons.arrow_right,
              size: 15.0,
            ),
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BottomNavigationBarExample()));
            })
      ])),
    ));
  }
}
