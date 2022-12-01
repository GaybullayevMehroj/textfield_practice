import 'package:flutter/material.dart';

Widget field(String helpertext, String hinttext, Color helpercolor) {
  return TextField(
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.person,
        color: Colors.blue,
      ),
      border: OutlineInputBorder(),
      helperText: helpertext,
      helperStyle: TextStyle(color: helpercolor),
      hintText: hinttext,
    ),
  );
}

Widget field1(String helpertext, String hinttext, Color helpercolor,
    IconData suffixicon) {
  return TextField(
    decoration: InputDecoration(
      suffixIcon: Icon(
        suffixicon,
        color: Color.fromARGB(255, 73, 5, 141),
      ),
      border: OutlineInputBorder(),
      helperText: helpertext,
      helperStyle: TextStyle(color: helpercolor),
      hintText: hinttext,
    ),
  );
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(bottom: 250),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              field(
                'input your name',
                'name',
                Colors.blue,
              ),
              field(
                'input your lastname',
                'Last name',
                Colors.blue,
              ),
              field1(
                'school number',
                'School',
                Color.fromARGB(255, 73, 5, 141),
                Icons.school,
              ),
              field1(
                'Input grade',
                'Grede',
                Color.fromARGB(255, 73, 5, 141),
                Icons.grade,
              ),
              TextField(
                controller: TextEditingController(text: '+998'),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.grade,
                    color: Color.fromARGB(255, 73, 5, 141),
                  ),
                  border: OutlineInputBorder(),
                  helperText: 'Input phone number',
                  helperStyle:
                      TextStyle(color: Color.fromARGB(255, 73, 5, 141)),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
