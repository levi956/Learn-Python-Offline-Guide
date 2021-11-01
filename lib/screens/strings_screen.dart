import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

class Strings extends StatelessWidget {
  final str1 = '''
Strings are used in Python to record text information, such as names. Strings in Python are actually a sequence, which basically means Python keeps track of every element in the string as a sequence. For example, Python understands the string "hello' to be a sequence of letters in a specific order. This means we will be able to use indexing to grab particular letters (like the first letter, or the last letter).
Strings are immutable. Strings can be concatenated.
''';

  final code1 = '''
sentence1 = 'String with single quote'
sentence2 = "String with double quote"

# we can only use len() to get the number of elements in a string
# note: white spaces also count
len(sentence1)
# output
24

we can also index and slice strings 
sentence1[0]
sentence[1:]

# output
'S'
'tring with single quote'
''';

  final code2 = '''
name = 'John'
# Upper case a string and lower case a string
name.upper()
name.lower()

# output
'JOHN'
'john'

# Split a string by blank space
sentence2 = 'Hello World'
sentence2.split()

# output
['Hello', 'World']
''';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Strings',
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
                child: Text(str1,
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
                child: Text('Some String Methods',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
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
