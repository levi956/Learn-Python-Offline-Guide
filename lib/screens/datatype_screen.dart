import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class DataType extends StatelessWidget {
  final theText = '''
In Python, variables can store data of different types, and different types can do different things. 
Python has the following data types built-in by default, in these categories:

- Text Type: str
- Numeric Type: int, float, complex
- Sequence Types: list, tuple, range
- Mapping Type: dict
- Set Types: set, forzenset
- Boolean Type: bool
- Binary Types: bytes, bytearray, memoryview

You can get the data type of any object by using the type() function.
''';

  final code1 = '''
name  = 'John'     # Text type String
age = 20           # Numeric type age
vowels = ['a','e','i','o','u']     # Sequence type List 
name_of_cars = ('Toyota', 'Mercedes', 'Porshe')  # Sequence type tuple
a_set = (1,2,3,4)         # Set type sets
the_colors = {1: 'blue', 2: 'red', 3: 'green'} # Mapping type dict
is_found = true   # Boolean type bool
''';

  final theString = '''
A string simply stores text. A string is a group of characters of UTF-16 code units. You can create a string using single or double quotes(as long as they are the same as the beginning and end of the string). 
Since strings start with quotes, what if you want to put a quote inside your string, you use the escape character '\''.
''';

  final code2 = '''
sentence = 'It\'s his birthday today'
''';

  final theNumerical = '''
Integers are whole positive or negative numbers with no decimal used to perform arithmetic operations.
Longs are integers of unlimited size, written like integers and followed by an uppercase or lowercase L.
Doubles are numbers which don't have to be whole numbers meaning they can contain decimal points.
Floats, they represent real numbers and are written with a decimal point dividing the integer and fractional parts.
''';

  final code3 = '''
point = 12.3     # Doubles
point2 = 23.436363   #floats
max_streams = 3424752375236253L    # long
''';

  final theSequence = '''
A sequence is an ordered collection of similar or different data types.
To know more about Lists, check the intermediate categories in the home page.
To know more about dictionaries, check the intermediate categories in the home page.
''';
  final theSets = '''
A set is an unordered collection of items. Every element in a set is unique(no duplicates) and must be immutable(cannot be changed).
''';

  final theBoolean = '''
A boolean simply sets a condtion to be either true of false. 
''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Data Types',
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
                child: Text(theText,
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
                margin: EdgeInsets.only(top: 15),
                child: Text('String',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(theString,
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
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Numerical',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(theNumerical,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white)),
              ),
              Container(
                child: HighlightView(
                  code3,
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
                margin: EdgeInsets.only(top: 15),
                child: Text('Sequence types',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(theSequence,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Sets',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(theSets,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Boolean',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white)),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(theBoolean,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
