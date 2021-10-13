import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class Functions extends StatelessWidget {
  final func1 = '''
Simply put, a function is a unit of reusable code.
You can pass data, known as parameters, into a function.
''';

  final func2 = '''
A function is created by using the 'def' keyword,
Then the name of the function(varible naming convention)
Then it is closed off with a '()' and  ':'.
To call a function, use the function name followed by a parenthesis.
''';

  final code1 = '''
def my_function():
    print('Hello from a function')

my_function()   # calling the function
''';

  final func3 = '''
Information can be passed into functions as arguments.
Arguments are specified after a the function name, inside the parentheses. You can add as many arguments as you want, just seperate them with a comma.
''';

  final code2 = '''
def greeting(name):
    print(f'Hello {name}')

greeting('John')
John    # output
''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Functions',
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Text(func1,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Creating a Function',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white)),
              ),
              Container(
                child: Text(func2,
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
              Container(
                child: Text(func3,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white)),
              ),
              Container(
                child: HighlightView(
                  code2,
                  language: 'python',
                  padding: EdgeInsets.all(10),
                  theme: darculaTheme,
                  textStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
