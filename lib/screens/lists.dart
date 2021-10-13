import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class Lists extends StatelessWidget {
  final list1 = '''
Lists are used to store multiple items in a single variable.
List items are ordered, changable(mutable) and allow duplicate values.
the len() function tells you how many items are in the sequence of the list.
''';

  final code1 = '''
my_list = ['a', 'b', 23, 25]
len(my_list)

# output 
4
''';

  final list2 = '''
Indexing and slicing are used to access the list tems and grab part of the list items.
Note: Indexing in Python always starts from 0 not 1.
Also to grab the last element in a list, you use a negative index [-1].

''';

  final code2 = '''
name_list = ['John', 'Doe', 'Jack', 'Daen']
print(name_list[1])
# output
Doe

# [0] == John
# [1] == Doe
# [2] == Jack
# [3] == Daen

# [-1] = Daen

# Grabs index 1 and everything past it.
name_list[1:]

# output
['Doe', 'Jack', 'Daen']

# Grabs everything up to index 3
name_list[:3]

# output
[''John, 'Doe', 'Jack',]
''';

  final list3 = '''
Python offers some basic methods for lists.
Below are some basic list methods.
''';

  final code3 = '''
list_num = [1,2,3]
# Append
list_num.append('append me')
print(list_num)

# output
[1,2,3, 'append me']
''';

  final pop = '''
Use pop to 'pop off' an item from the list. By default pop takes off the last index, but you can also specify which index to pop off.
''';
  final code4 = '''
my_list = [1,2,3]
my_list.pop(0)
print(my_list)

# output
[2,3]
''';

  final reverse = '''
We can use the sort method and reverse methods to make an effect on your list.
''';

  final codereverse = '''
new_list = ['a','e','x','b','c']
new_list.sort()
new_list.reverse()  # this is permanent

# output
['a','b','c','e','x']
['x','e','c','b','a']
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
                  child: Text(list1,
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
                  child: Text('Indexing and Slicing',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(list2,
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
                  child: Text('Append and Pop',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(list3,
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
                  child: Text(pop,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  child: HighlightView(
                    code4,
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
                  child: Text('Reverse and Sort',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(reverse,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  child: HighlightView(
                    codereverse,
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
