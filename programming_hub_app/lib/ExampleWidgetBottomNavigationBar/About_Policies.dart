import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:general_knowledge/DefaultTabController.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Notifications.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Profile.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Quiz.dart';
import 'package:general_knowledge/ExampleWidgetBottomNavigationBar/Search.dart';
import 'package:general_knowledge/Home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Screen5 extends StatefulWidget {
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  
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


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | Terms of Use",
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
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                  children: [
                    Heading("Privacy Policy"),
                    Peragraph("JAJ Digital built the Programming Hub app as a Free app. This SERVICE is provided by JAJ Digital at no cost and is intended for use as is."),
                    Peragraph("This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service."),
                    Peragraph("If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy."),
                    Peragraph("The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at General Knowledge unless otherwise defined in this Privacy Policy."),
                    Heading("Information Collection and Use"),
                    Peragraph("For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to There are different MCQs of Subjects in this app . The information that we request will be retained by us and used as described in this privacy policy."),
                    Peragraph("The app does use third-party services that may collect information used to identify you."),
                    Peragraph("Link to the privacy policy of third-party service providers used by the app"),
                    Peragraph("Google Play Services"),
                    Peragraph("Facebook"),
                    Peragraph("Log Data"),
                    Peragraph("We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics."),
                    Heading("Cookies"),
                    Peragraph("Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory."),
                    Peragraph("This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service."),
                    Heading("Service Providers"),
                    Peragraph("We may employ third-party companies and individuals due to the following reasons:"),
                    Peragraph("To facilitate our Service;"),
                    Peragraph("To provide the Service on our behalf;"),
                    Peragraph("To perform Service-related services;"),
                    Peragraph("or To assist us in analyzing how our Service is used. We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose."),
                    Heading("Security"),
                    Peragraph("We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security."),
                    Heading("Links to Other Sites"),
                    Peragraph("This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services."),
                    Heading("Changes to This Privacy Policy"),
                    Peragraph("We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page."),
                    Peragraph("This policy is effective as of 2022-01-13"),
                    Heading("Contact Us"),
                    Peragraph("If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at generalknowledge@gmail.com."),
                    Heading("Follow Us"),
                    Button("Facebook", "https://www.facebook.com/stylish.jibran/"),
                    Button("Twitter", "https://twitter.com/JibranJabbar06"),
                    Button("LinkedIn", "https://www.linkedin.com/in/jibran-abdul-jabbar-249a66209/"),
                    Button("GitHub", "https://github.com/jibranabduljabbar"),
                    Button("Youtube", "https://www.youtube.com/channel/UCYLh4RjXI6rNcFEeot1Rsuw"),
                    Button("Instagram", "https://www.instagram.com/jibranabduljabbar/"),
                  ],
                )),
              )),
            ),
          ),
        ));
  }
}

Widget Heading(head) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(head,
        style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white)),
  );
}

Widget Peragraph(pera) {
  return    Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                pera,
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.normal,
                    fontSize: 10,
                    color: Colors.white)),
              );

}

Widget Button(name, url){
  return                                         Container(
                              width: 365,
                              margin: EdgeInsets.only(right: 10,left: 10, bottom: 10, top: 20),
                              height: 55,
                              child: ElevatedButton.icon(
                                label: Text(
                                  "",
                                  style: GoogleFonts.sourceSansPro(
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                icon: name == "Facebook" ? Icon(FontAwesomeIcons.facebook,color: Colors.blue,) : name == "Twitter" ? Icon(FontAwesomeIcons.twitter,color: Colors.blue,) : name == "Youtube" ? Icon(FontAwesomeIcons.youtube,color: Colors.red,) : name == "Instagram" ? Icon(FontAwesomeIcons.instagram, color: Colors.red[500],) : name == "LinkedIn" ? Icon(FontAwesomeIcons.linkedin,color: Colors.blue[600],) : name == "GitHub" ? Icon(FontAwesomeIcons.github,color: Colors.black,) : Icon(FontAwesomeIcons.networkWired, color: Colors.black,),
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
                                  launch(url);
                                },
                              ),
                            );
}