import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class OperationScreen extends StatelessWidget {
  final code = '''
# Addition
5+5     //10

# Subtraction
10-5    //5

# Multiplication
5*3     //15

# Division
3/2     //1.5

# Floor Division
# dividing with no remainder only an int result
7//4   //1

# Modulo
# returning only the remainder 
7%4    //3

# Powers
2**3   //8

# note that python follows Order of Operation, hence
2 + 10 * 10 + 3   //105

(2+10) * (10+3)   //156

# increment
1++      //2

# decrement
2--      //1

# equal
2 == 2   #returns a boolean

# not equal to
2 != 2   #returns a boolean

# greater than
2 > 1    #returns a boolean

# less than
2 < 1    # returns a boolean

# greater than or equal to
2 >= 1   #returns a boolean

# less than or equal to
2 <= 1   #returns a boolean
''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Arithmetic Operations',
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
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Arithmetic Operations are used to perform common mathematical operations. Comparison operation sare used to compare different values.',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Colors.white),
                    )),
                Container(
                  child: HighlightView(
                    code,
                    language: 'python',
                    padding: EdgeInsets.all(10),
                    theme: darculaTheme,
                    textStyle: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
