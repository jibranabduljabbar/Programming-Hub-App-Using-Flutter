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
  "All of the above",
  "All of the above",
  "horn clause",
  "STACK(A,B)",
  "top-down parser",
  "structural units.",
  "Introduction",
  "Both A and B",
  "based on human supervision",
  "hyperparameters"
];

var wrong = [
  "Machine Learning (ML) is that field of computer science",
  "Improve their performance",
  "hack clause",
  "LIST(A,B)",
  "bottow-up parser",
  "System Unit",
  "Analogy",
  "Batch learning",
  "supervised Learning",
  "mini-batches"
];

var wrong1 = [
  "ML is a type of artificial intelligence that extract patterns out of raw data by using an algorithm or method.",
  "At executing some task",
  "structural clause",
  "QUEUE(A,B)",
  "top parser",
  "data units",
  "Deduction",
  "Offline learning",
  "semi-reinforcement Learning",
  "optimizedparameters",
];

var wrong2 = [
  "The main focus of ML is to allow computer systems learn from experience without being explicitly programmed or human intervention.",
  "Over time with experience",
  "system clause",
  "ARRAY(A,B)",
  "bottom parser",
  "empirical units",
  "Memorization",
  "None of the above",
  "All of the above",
  "superparameters",
];

var title = [
  "What is true about Machine Learning?",
  "ML is a field of AI consisting of learning algorithms that?",
  "p → 0q is not a?",
  "The action _______ of a robot arm specify to Place block A on block B.",
  "A__________ begins by hypothesizing a sentence (the symbol S) and successively predicting lower level constituents until individual preterminal symbols are written.",
  "A model of language consists of the categories which does not include ________.",
  "Different learning methods does not include?",
  "The model will be trained with data in one single batch is known as ?",
  "Which of the following are ML methods?",
  "In Model based learning methods, an iterative process takes place on the ML models that are built based on various model parameters, called ?",
];


class Machine_Learning_Types extends StatelessWidget {
  const Machine_Learning_Types({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | Machine Learning",
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
