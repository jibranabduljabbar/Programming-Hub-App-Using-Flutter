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
  "Cascading style sheets",
  "Id",
  "clear",
  "z-index",
  "float",
  '<link rel="stylesheet" type="text/css" href="example.css">',
  "background-color",
  "color",
  "font-size",
  "style",
];

var wrong = [
  "Cascade style sheets",
  "text",
  "margin",
  "d-index",
  "wrap",
  "<style src = example.css>",
  "bgcolor",
  "bgcolor",
  "text-style",
  "styles"
];

var wrong1 = [
  "Color and style sheets",
  "class",
  "float",
  "s-index",
  "push",
  '<style src = "example.css" >',
  "color",
  "background-color",
  "text-size",
  "class",
];

var wrong2 = [
  "None of the above",
  "name",
  "padding",
  "x-index",
  "align",
  "<stylesheet> example.css </stylesheet>",
  "All of the above",
  "All of the above",
  "None of the above",
  "None of the above",
];

var title = [
  "CSS stands for -",
  "If we want define style for an unique element, then which css selector will we use ?",
  "If we don't want to allow a floating div to the left side of an element, which css property will we use ?",
  "Suppose we want to arragnge five nos. of DIVs so that DIV4 is placed above DIV1. Now, which css property will we use to control the order of stack?",
  "If we want to wrap a block of text around an image, which css property will we use ?",
  "Which of the following is the correct syntax for referring the external style sheet?",
  "The property in CSS used to change the background color of an element is -",
  "The property in CSS used to change the text color of an element is -",
  "The CSS property used to control the element's font-size is -",
  "The HTML attribute used to define the inline styles is -",
];

class CSS_Types extends StatelessWidget {
  const CSS_Types({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | CSS",
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
