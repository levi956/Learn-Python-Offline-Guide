import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/darcula.dart';

class ObjectOriented extends StatelessWidget {
  final oop1 = '''
In Python,everything is an object. We use the type() to check the type of object of something.
''';

  final code1 = '''
print(type(1))
print(type([]))
print(type(()))
print(type({})

# output
<class 'int'>
<class 'list'>
<class 'tuple'>
<class 'dict'>
''';

  final oop2 = '''
So how do we create our own object type? This is where the class keyword comes in.
User defined objects are created using the class keyword. The class is a blueprint that defines the nature of a future object.
From classes, we can construct instances. An instance is a specific object created from a particular class. For example, above we created the object lst which was an instance of a list object.
''';

  final code2 = '''
# Create a new object of type called Dog

class Dog:
    pass

# Instance of Dog
x = Dog()
print(type(Dog))

# Output 
<class '__main__.Dog'>
''';

  final oop3 = '''
An attribute is a characteristics of an object. A method is an operation we can perform with the object.
For example, An attribute of a dog may be its breed or name, while a method of a dog may be defined by a .bark() method which returns a sound.
''';

  final code3 = '''
# the syntax for creating an attribute is:
    self.attribute = something
# there is a special method called:
    __init__() # this is the method used to initialize the attributeof an object.

class Dog:
    def __init__(self,breed):
        self.breed = breed

blossom = Dog(breed='Lhasa')
ace = Dog(breed='Huskie')

blossom.breed
ace.breed
# output
'Lhasa'
'Huskie'
''';

  final oop4 = '''
Note how we don't have any parentheses after breed; this is because it is an attribute and doesn't take any arguments.

In Python there are also class object attributes. These Class Object Attributes are the same for any instance of the class. For example, we could create the attribute species for the Dog class. Dogs, regardless of their breed, name, or other attributes, will always be mammals. We apply this logic in the following manner:
''';

  final code4 = '''
class Dog:
    
    # Class Object Attribute
    species = 'mammal'
    
    def __init__(self,breed,name):
        self.breed = breed
        self.name = name
blossom = Dog('Lhasa','blossom')

blossom.name
# output
'Blossom'
''';

  final oop5 = '''
Methods are functions defined inside the body of a class. They are used to perform operations with the attributes of our objects. Methods are a key concept of the OOP paradigm. They are essential to dividing responsibilities in programming, especially in large applications.

You can basically think of methods as functions acting on an Object that take the Object itself into account through its self argument.

Let's go through an example of creating a Circle class:
''';

  final code5 = '''
class Circle:
    pi = 3.14

    # Circle gets instantiated with a radius (default is 1)
    def __init__(self, radius=1):
        self.radius = radius 
        self.area = radius * radius * Circle.pi

    # Method for resetting Radius
    def setRadius(self, new_radius):
        self.radius = new_radius
        self.area = new_radius * new_radius * self.pi

    # Method for getting Circumference
    def getCircumference(self):
        return self.radius * self.pi * 2


c = Circle()

print('Radius is: ',c.radius)
print('Area is: ',c.area)
print('Circumference is: ',c.getCircumference())

# Output
Radius is:  1
Area is:  3.14
Circumference is:  6.28
''';

  final oop6 = '''
Inheritance is a way to form new classes using classes that have already been defined. The newly formed classes are called derived classes, the classes that we derive from are called base classes. Important benefits of inheritance are code reuse and reduction of complexity of a program. The derived classes (descendants) override or extend the functionality of base classes (ancestors).

Let's see an example by incorporating our previous work on the Dog class:
''';

  final code6 = '''
class Animal:
    def __init__(self):
        print("Animal created")

    def whoAmI(self):
        print("Animal")

    def eat(self):
        print("Eating")


class Dog(Animal):
    def __init__(self):
        Animal.__init__(self)
        print("Dog created")

    def whoAmI(self):
        print("Dog")

    def bark(self):
        print("Woof!")

d = Dog()
# output
Animal created
Dog created

d.whoAmI()
# output
Dog
d.bark()
# output
Woof!

# In this example, we have two classes: Animal and Dog. The Animal is the base class, the Dog is the derived class.
# The derived class inherits the functionality of the base class.
# The derived class modifies existing behavior of the base class.
''';

  final oop7 = '''
We've learned that while functions can take in different arguments, methods belong to the objects they act on. In Python, polymorphism refers to the way in which different object classes can share the same method name, and those methods can be called from the same place even though a variety of different objects might be passed in. The best way to explain this is by example:
''';

  final code7 = '''
class Dog:
    def __init__(self, name):
        self.name = name

    def speak(self):
        return self.name+' says Woof!'
    
class Cat:
    def __init__(self, name):
        self.name = name

    def speak(self):
        return self.name+' says Meow!' 
    
niko = Dog('Niko')
felix = Cat('Felix')

print(niko.speak())
print(felix.speak())

# Output
Niko says Woof!
Felix says Meow!

# There a few different ways to demonstrate polymorphism. First, with a for loop:
for pet in [niko,felix]:
    print(pet.speak())

# Output
Niko says Woof!
Felix says Meow!
''';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Object Oriented Programming',
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
                  child: Text(oop1,
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
                  child: Text(
                    'Creating a class',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    oop2,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
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
                  child: Text(
                    'Attribures and Objects',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    oop3,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
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
                  child: Text(
                    'Class Object Attributes',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    oop4,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
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
                  child: Text(
                    'Methods',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    oop5,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: HighlightView(
                    code5,
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
                  child: Text(
                    'Inheritance',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    oop6,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: HighlightView(
                    code6,
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
                  child: Text(
                    'Polymorphism',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Text(
                    oop7,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: HighlightView(
                    code7,
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
