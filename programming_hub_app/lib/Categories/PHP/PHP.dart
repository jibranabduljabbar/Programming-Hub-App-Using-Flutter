// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var leading = [
  "1.",
  "2.",
  "3.",
  "4.",
  "5.",
  "6.",
  "7.",
  "8.",
  "9.",
  "10.",
];

var count = [
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
  "A",
];

var count1 = [
  "B",
  "B",
  "B",
  "B",
  "B",
  "B",
  "B",
  "B",
  "B",
  "B",
];

var count2 = [
  "C",
  "C",
  "C",
  "C",
  "C",
  "C",
  "C",
  "C",
  "C",
  "C",
];

var count3 = [
  "D",
  "D",
  "D",
  "D",
  "D",
  "D",
  "D",
  "D",
  "D",
  "D",
];

var correct = [
  "Hypertext Preprocessor",
  "Rasmus Lerdrof",
  "\$ (Dollar)",
  ".php",
  "Extern",
  "Both (b) and (c)",
  "Both (a) and (c)",
  "The strlen() function returns the length of string",
  ". (dot)",
  "Magic constants"
];

var wrong = [
  "Pretext Hypertext Preprocessor",
  "Drek Kolkevi",
  "! (Exclamation)",
  ".hphp",
  "Local",
  "& …… &",
  "echo",
  "The strlen() function returns the type of string",
  "+ (plus)",
  "Inbuilt constants"
];

var wrong1 = [
  "Personal Home Processor",
  "List Barely",
  "& (Ampersand)",
  ".xml",
  "Static",
  "// ……",
  "write",
  "The strlen() function returns the value of string",
  "* (Asterisk)",
  "User-defined constants",
];

var wrong2 = [
  "None of the above",
  "None of the above",
  "# (Hash)",
  ".html",
  "Global",
  "/* …… */",
  "print",
  "The strlen() function returns both value and type of string",
  "append()",
  "Default constants",
];

var title = [
  "PHP stands for -",
  "Who is known as the father of PHP?",
  "Variable name in PHP starts with -",
  "Which of the following is the default file extension of PHP?",
  "Which of the following is not a variable scope in PHP?",
  "Which of the following is correct to add a comment in php?",
  "Which of the following is used to display the output in PHP?",
  "Which of the following is the use of strlen() function in PHP?",
  "Which of the following is used for concatenation in PHP?",
  "Which of the following starts with __ (double underscore) in PHP?",
];

class PHP_Types extends StatelessWidget {
  const PHP_Types({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | PHP",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            AntonymsWidget(),
          ],
        ),
      )
    );
  }
}

Widget AntonymsWidget(){
  return Card(
    color: Colors.black,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             ListView.builder(
                      
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: leading.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Card( 
                            child: 
                          Column( 
                            children: [
                          ListTile(
                                leading: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Colors.black,
                                    child: Center(
                                      child: Text(leading[index],
                                          style: GoogleFonts.sourceSansPro(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )),
                                title: Text(title[index],
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold, color: Colors.black)),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     color: Colors.black,
                     child: ListTile(
                                leading: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.green,
                                    child: Center(
                                      child: Text(count[index],
                                          style: GoogleFonts.sourceSansPro(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )),
                                title: Text(correct[index],
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     color: Colors.black,
                     child: ListTile(
                                leading: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    child: Center(
                                      child: Text(count1[index],
                                          style: GoogleFonts.sourceSansPro(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )),
                                title: Text(wrong[index],
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     color: Colors.black,
                     child: ListTile(
                                leading: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    child: Center(
                                      child: Text(count2[index],
                                          style: GoogleFonts.sourceSansPro(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )),
                                title: Text(wrong1[index],
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                     ),
                   ),
                 ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    color: Colors.black,
                                    child: ListTile(
                            leading: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    child: Center(
                                      child: Text(count3[index],
                                          style: GoogleFonts.sourceSansPro(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    )),
                            title: Text(wrong2[index],
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                 ),
                                  ),
                                ) ] ) 
                 )
             
                        ],
                      )),

          ],
        ),
      ),
    ),
  );
}
