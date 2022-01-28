import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:general_knowledge/Nav.dart';
import 'Login.dart';
import 'package:general_knowledge/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/src/types/picked_file/base.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as path;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

  var errorsuccess = "";
  var setcolor = 11;


class _SignUpState extends State<SignUp> {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController companyController = TextEditingController();
    final TextEditingController locationController = TextEditingController();
    final TextEditingController bioController = TextEditingController();
    var imagePath;
    var downloadURLs;

    @override  

  Widget build(BuildContext context) {  
  void imagepicker() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);   
     setState(() {
      imagePath = image?.path;
    } );
  }
  
    
    void Registered() async {

      User? user = FirebaseAuth.instance.currentUser;

      if (user!= null && !user.emailVerified) {
      await user.sendEmailVerification();
      }
      else{
              FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      final String username = usernameController.text;
      final String email = emailController.text;
      final String password = passwordController.text;
      final String company = companyController.text;
      final String location = locationController.text;
      final String bio = bioController.text;
      
      try{

      String imageName = path.basename(imagePath);
      firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;      
      firebase_storage.Reference ref =
      firebase_storage.FirebaseStorage.instance.ref('/$imageName');
      File file = File(imagePath);
      await ref.putFile(file); 
      String downloadedURLs = await ref.getDownloadURL();
      setState(() {
        downloadURLs = downloadedURLs;
      });       
      print("File Uploaded Successfully");
      print(downloadedURLs);
      } catch(e) {
        print("Error: " + e.toString());
      }

      try {        if (username == "" || email == "" || password == "" || company == "" || location == "" || bio == ""){
          setState(() {
            errorsuccess = "All Fields are Required...!";
            setcolor = 3;
          });
      }
      else{
        final UserCredential user = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        db
            .collection("users")
            .doc(user.user!.uid)
            .set({"email": email, "username": username, "company": company, "location": location, "bio": bio, "url": downloadURLs});

        setState(() {
          errorsuccess = "Created Account Successfully!";
          setcolor = 5;
        }); 
        
        
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => DefaultTabControllerExample()));

        }
      } catch (e) {
        emailController.text = "";
        passwordController.text = "";
        setState(() {
          errorsuccess = "Email & Password Is Invalid!";
          setcolor = 3;
        });
        print("Error: ");
      }

      }

    }

    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
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
                Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                imagepicker();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Pick an Image",
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.white
                ),
              ),),
        ),
        SizedBox(height: 20),

        Container(
          width: 300,
          height: 45,
          child: ElevatedButton(
              onPressed: () {
                Registered();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: Text(
                "Registered",
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
              "Already have Account, Please Sign In now!",
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
    )));
  }
}
