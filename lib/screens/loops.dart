import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class Loops extends StatelessWidget {
  final loop1 = '''
A for loop keywords acts as an iterator in Python, it goes through items that are in a sequence or any other iterable item.
''';

  final code1 = '''
list1 = [1,2,3,4,5,6,7,8,9,10]
for num in list1:
    print(num)

#output
1
2
3
4
5
6
7
8
9
10

# you can add a condition over what you want to iterate over
for num in list1:
    if num % 2 == 0:
        print(num)

# output 
2
4
6
8
10
''';

  final loop2 = '''
The while statement will repeatedly execute a single statement or group of statements as long as the condition is true until it becomes false.
''';

  final code2 = '''
x = 0

while x < 5:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1

# output
x is currently:  0
 x is still less than 5, adding 1 to x
x is currently:  1
 x is still less than 5, adding 1 to x
x is currently:  2
 x is still less than 5, adding 1 to x
x is currently:  3
 x is still less than 5, adding 1 to x
x is currently:  4
 x is still less than 5, adding 1 to x
x is currently:  5

''';

  final loop3 = '''
We can use break, continue, and pass statements in our loops to add additional functionality for various cases.
break: Breaks out of the current closest enclosing loop.
continue: Goes to the top of the closest enclosing loop.
pass: Does nothing at all.
''';

  final code3 = '''
x = 0

while x < 5:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1
    if x==3:
        print('Breaking because x==3')
        break
    else:
        print('continuing...')
        continue

# output 
x is currently:  0
 x is still less than 5, adding 1 to x
continuing...
x is currently:  1
 x is still less than 5, adding 1 to x
continuing...
x is currently:  2
 x is still less than 5, adding 1 to x
Breaking because x==3
''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Lists',
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
                  margin: EdgeInsets.only(top: 15),
                  child: Text('for statement',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(loop1,
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
                  child: Text('while statement',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(loop2,
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
                  child: Text('break, pass and continue statements',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(loop3,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
