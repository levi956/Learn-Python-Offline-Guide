import 'dart:ui';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Intro extends StatelessWidget {
  final python = '''
Python is an object oriented high-level programming language. First launched in 1992, it's built in a way that
is relatively intuitive to write and easy ti understand. As such, it's an ideal language for those that want rapid development.
If you're wondering who uses python, many of the biggest organisations in thw world implement it in some form. NASA, Google, Netflix, and countless others
more all use the language to help power their services.
''';

  final python2 = '''
Some reasons to learn python are:
- Python Developers are in demand. Across a wide range of fields, there is a demand for those with Python skills.
- It could lead to a well-paid career. Data suggests that the annual salary of Python developers is around \$70,000 in the US.
- There are job opportunities. Python can be used in many emerging technologies such as AI, machine learning and data analytics.

''';

  final python3 = '''
Clearly, Python is a popular and in-demand skill to learn. But what is python programming language used for?
''';

  final ai = '''
Because Python is such a stable, flexible, and simple programming language, it’s perfect for various machine learning (ML) and artificial intelligence (AI) projects. In fact, Python is among the favourite languages among data scientists, and there are many Python machine learning and AI libraries and packages available. 

If you’re interested in this application of Python, our Deep Learning and Python Programming for AI with Microsoft Azure ExpertTrack can help you develop your skills in these areas. You can discover the uses of Python and deep learning while boosting your career in AI.
''';

  final dataAnalysis = '''
Much like AI and machine learning, data analytics is another rapidly developing field that utilises Python programming. At a time when we’re creating more data than ever before, there is a need for those who can collect, manipulate and organise the information. 

Python for data science and analytics makes sense. The language is easy-to-learn, flexible, and well-supported, meaning it’s relatively quick and easy to use for analysing data. When working with large amounts of information, it’s useful for manipulating data and carrying out repetitive tasks.
''';

  final dataVisual = '''
Data visualisation is another popular and developing area of interest. Again, it plays into many of the strengths of Python. As well as its flexibility and the fact it’s open-source, Python provides a variety of graphing libraries with all kinds of features. 

Whether you’re looking to create a simple graphical representation or a more interactive plot, you can find a library to match your needs. Examples include Pandas Visualization and Plotly. The possibilities are vast, allowing you to transform data into meaningful insights.
''';

  final promApp = '''
You can program all kinds of applications using Python. The general-purpose language can be used to read and create file directories, create GUIs and APIs, and more. Whether it’s blockchain applications, audio and video apps, or machine learning applications, you can build them all with Python. 
''';

  final webDev = '''
Python is a great choice for web development. This is largely due to the fact that there are many Python web development frameworks to choose from, such as Django, Pyramid, and Flask. These frameworks have been used to create sites and services such as Spotify, Reddit and Mozilla. 

Thanks to the extensive libraries and modules that come with Python frameworks, functions such as database access, content management, and data authorisation are all possible and easily accessible. Given its versatility, it’s hardly surprising that Python is so widely used in web development.
''';

  final gameDev = '''
Although far from an industry-standard in game development, Python does have its uses in the industry. It’s possible to create simple games using the programming language, which means it can be a useful tool for quickly developing a prototype. Similarly, certain functions (such as dialogue tree creation) are possible in Python. 
''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Introduction To Python',
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
                  child: Text(python,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Reasons to learn Python',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(python2,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('What Python can be used for',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(python3,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Artificial Intelligence',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(ai,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Data Analytics',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(dataAnalysis,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Data Visualisation',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(dataVisual,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Application Programming',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(promApp,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Web Development',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(webDev,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text('Game Development',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white)),
                ),
                Container(
                  child: Text(gameDev,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
