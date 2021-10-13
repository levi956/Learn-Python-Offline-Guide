import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class ControlFlow extends StatelessWidget {
  final control1 = '''
Control Flow in python is the order in which the program's codes executes. The control flow of a Python program is regulated by
conditional statements, loops and functions calls. Go to the Loops in the intermediate category to read on Loops.
''';

  final control2 = '''
The 'if' statement in Python allows us to tell the program to perform a particular action/function if a condition is satisfied.
The 'elif' statement is an addition to the 'if' statement in Python that if another condition is satisfied, perfom this action.
The 'else' statement is when none of the conditions are satisfied, then the program should perform this action.
''';

  final code1 = '''
if case1:
    perform action1
elif case2:
    perform action2
else: 
    perform action3
''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Control Flow',
            style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(control1,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('if, elif and else keywords',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(control2,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  child: HighlightView(
                    code1,
                    language: 'python',
                    padding: EdgeInsets.all(10),
                    theme: darculaTheme,
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
