import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class Variables extends StatelessWidget {
  final code = '''
# variable assignment
a = 10    # assigning int 10 to variable a
name = 'Nifesi'   # assigning String 'Nifesi' to variable name
print(name)
type(name)    # type() used for to check what type of object assigned to a variable
type(int) 
  ''';

  final okay = '''
  - names can not start with a number
  - names can not contain spaces, use _ intead
  - avoid using Python built-in keywords like list and str
  - it's considered best practice (PEP8) that names are lowercase with underscores
  - avoid using the single characters l (lowercase letter el), O (uppercase letter oh) and I (uppercase letter eye) as they can be confused with 1 and 0
  ''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Variables',
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
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: const Text(
                    'A variable in Python is simply a reserved memory location to store values. In other words, a variable in python program gives data to the computer for processing.',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: const Text(
                    'Rules for naming variables in Python:',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 17),
                  ),
                ),
                Container(
                  child: Text(
                    okay,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: HighlightView(
                    code,
                    language: 'python',
                    padding: EdgeInsets.all(10),
                    theme: darculaTheme,
                    textStyle: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
