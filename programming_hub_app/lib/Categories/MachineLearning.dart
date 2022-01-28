// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:general_knowledge/Categories/Machine_Learning/Machine_Learning.dart';
import 'package:google_fonts/google_fonts.dart';

var leading = [
  "1.",
];
var title = [
  "Machine Learning Mcqs",
  ];
var subtitle = [
  "⭐ 5.0 (23 Reviews)",
];
var function = [  
  Machine_Learning_Types(),
];

class Machine_Learning extends StatelessWidget {
  const Machine_Learning({Key? key}) : super(key: key);

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
        body: listViewComp(),
        );
  }
}

Widget listViewComp() {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
            boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
 
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Card(
              child: ListView.builder(
                  
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: leading.length,
                  itemBuilder: (context, index) => ListTile(
                        leading: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Center(
                              child: Text(leading[index],
                                  style: GoogleFonts.sourceSansPro(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            )),
                        title: Text(title[index],
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold, color: Colors.black)),
                        subtitle: Text(subtitle[index],
                            style: GoogleFonts.sourceSansPro(
                                fontWeight: FontWeight.bold, color: Colors.black)),
                        trailing: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: IconButton(
                            icon: Icon(Icons.forward_rounded,color: Colors.white,),
                            onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => function[index],
    ));},
                          ),
                        )             )),
            ),
          ],
        ),
      ),
    ),
  );
}
