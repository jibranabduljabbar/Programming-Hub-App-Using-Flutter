// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var leading = [
/* 1 */   "1.",
/* 2 */   "2.",
/* 3 */   "3.",
/* 4 */   "4.",
/* 5 */   "5.",
/* 6 */   "6.",
/* 7 */   "7.",
/* 8 */   "8.",
/* 9 */   "9.",
/* 10 */  "10.",
];

var count = [
  "A", // 1
  "A", // 2
  "A", // 3
  "A", // 4
  "A", // 5
  "A", // 6
  "A", // 7
  "A", // 8
  "A", // 9
  "A", // 10
];

var count1 = [
  "B", // 1
  "B", // 2
  "B", // 3
  "B", // 4
  "B", // 5
  "B", // 6
  "B", // 7
  "B", // 8
  "B", // 9
  "B", // 10
];

var count2 = [
  "C", // 1
  "C", // 2
  "C", // 3
  "C", // 4
  "C", // 5
  "C", // 6
  "C", // 7
  "C", // 8
  "C", // 9
  "C", // 10
];

var count3 = [
  "D", // 1
  "D", // 2
  "D", // 3
  "D", // 4
  "D", // 5
  "D", // 6
  "D", // 7
  "D", // 8
  "D", // 9
  "D", // 10
];

var correct = [
  "Structure Query Language",
  "DECIMAL",
  "UPDATE",
  "COMMIT and ROLLBACK",
  "TRUNCATE",
  "Virtual tables",
  "Only 1",
  "RAW",
  "Union",
  "COMPUTE"
];

var wrong = [
  "Structured Query List",
  "FLOAT",
  "TRUNCATE",
  "UPDATE and TRUNCATE",
  "DELETE",
  "Simple tables",
  "Only 2",
  "CHAR",
  "Primary Key",
  "COUNT"
];

var wrong1 = [
  "Sample Query Language",
  "NUMERIC",
  "ALTER",
  "SELECT and INSERT",
  "REMOVE",
  "Complex tables",
  "Depends on no of Columns",
  "NUMERIC",
  "Not Null",
  "SUM",
];

var wrong2 = [
  "None of these.",
  "CHARACTER",
  "CREATE",
  "GRANT and REVOKE",
  "DROP",
  "Actual Tables",
  "Depends on DBA",
  "VARCHAR",
  "Check",
  "MAX",
];

var title = [
  "What is the full form of SQL?",
  "Which of the following is not a valid SQL type?",
  "Which of the following is not a DDL command?",
  "Which of the following are TCL commands?",
  "Which statement is used to delete all rows in a table without having the action logged?",
  "SQL Views are also known as",
  "How many Primary keys can have in a table?",
  "Which datatype can store unstructured data in a column?",
  "Which of the following is not Constraint in SQL?",
  "Which of the following is not a valid aggregate function?",
];


class SQL_Types extends StatelessWidget {
  const SQL_Types({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text("Programming Hub | SQL",
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
                      itemCount: title.length,
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
