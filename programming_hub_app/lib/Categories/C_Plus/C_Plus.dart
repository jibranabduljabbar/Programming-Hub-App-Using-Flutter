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
  "Bjarne Stroustrup",
  "C++ supports both procedural and object oriented programming language",
  "#include “userdefined”",
  "both // comment or /* comment */",
  "h",
  "VAR_1234",
  "Friend constructor",
  "Bottom-up",
  "C++ technique to avoid multiple copies of the base class into children/derived class",
  "The program is compiled and executed successfully"
];

var wrong = [
  "Dennis Ritchie",
  "C++ is an object oriented programming language",
  "#include [userdefined]",
  "/* comment */",
  "hg",
  "\$var_name",
  "Default constructor",
  "Left-right",
  "C++ technique to enhance multiple inheritance",
  "The program is not semantically correct"
];

var wrong1 = [
  "Ken Thompson",
  "C++ is a procedural programming language",
  "#include <userdefined.h>",
  "// comment */",
  "cpp",
  "7VARNAME",
  "Parameterized constructor",
  "Right-left",
  "C++ technique to ensure that a private member of the base class can be accessed somehow",
  "The program gives a compile-time error",
];

var wrong2 = [
  "Brian Kernighan",
  "C++ is a functional programming language",
  "#include <userdefined>",
  "// comment",
  "hf",
  "7var_name",
  "Copy constructor",
  "Top-down",
  "C++ technique to avoid multiple inheritances of classes",
  "The program compiled successfully but throws an error during run-time",
];

var title = [
  "Who invented C++?",
  "What is C++?",
  "Which of the following is the correct syntax of including a user defined header files in C++?",
  "Which of the following is used for comments in C++?",
  "Which of the following user-defined header file extension used in c++?",
  "Which of the following is a correct identifier in C++?",
  "Which of the following is not a type of Constructor in C++?",
  "Which of the following approach is used by C++?",
  "What is virtual inheritance in C++?",
  "What happens if the following C++ statement is compiled and executed? \n int *ptr = NULL; \n delete ptr;",
];

class C_Plus_Types extends StatelessWidget {
  const C_Plus_Types({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | C++",
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
