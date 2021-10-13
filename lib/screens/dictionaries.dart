import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// ignore: must_be_immutable
class Dictionaries extends StatelessWidget {
  final dict1 = '''
Mappings are a collection of objects that are stored by a key, unlike a sequence that stored objects by their relative position. This is an important distinction, since mappings won't retain order since they have objects defined by a key.
Dictionaries are used to store data values in key:value pairs.

A dictionary is a collection which is ordered, changeable and does not allow duplicates.
A Python dictionary consists of a key and then an associated value. That value can be almost any Python object.
''';

  final code1 = '''
# Make a dictionary with {} and : to signify a key and a value
my_dict = {'key1':'value1','key2':'value2'}

# Call values by their key
my_dict['key2']
# output
'value2'


my_dict = {'key1':123,'key2':[12,23,33],'key3':['item0','item1','item2']}

# Let's call items from the dictionary
my_dict['key3']
# output
['item0', 'item1', 'item2']

# Can call an index on that value
my_dict['key3'][0]
# output
'item0'
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
                  child: Text(
                    dict1,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Dictionaries Operation',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
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
