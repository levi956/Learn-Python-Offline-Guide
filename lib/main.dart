import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:python_cheat_sheet_app/screens/control_flow_screen.dart';
import 'package:python_cheat_sheet_app/screens/datatype_screen.dart';
import 'package:python_cheat_sheet_app/screens/dictionaries_screen.dart';
import 'package:python_cheat_sheet_app/screens/error_except_screen.dart';
import 'package:python_cheat_sheet_app/screens/functions_screen.dart';
import 'package:python_cheat_sheet_app/screens/home_screen.dart';
import 'package:python_cheat_sheet_app/screens/intro_screen.dart';
import 'package:python_cheat_sheet_app/screens/keyword_screen.dart';
import 'package:python_cheat_sheet_app/screens/lists.dart';
import 'package:python_cheat_sheet_app/screens/loops.dart';
import 'package:python_cheat_sheet_app/screens/oop_screeen.dart';
import 'package:python_cheat_sheet_app/screens/operations_screen.dart';
import 'package:python_cheat_sheet_app/screens/setttings_screen.dart';
import 'package:python_cheat_sheet_app/screens/sorting_algo.dart';
import 'package:python_cheat_sheet_app/screens/strings_screen.dart';
import 'package:python_cheat_sheet_app/screens/variables_screen.dart';
import 'package:python_cheat_sheet_app/services/ad_state.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  runApp(
    Provider.value(
      value: adState,
      builder: (context, child) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        debugShowCheckedModeBanner: false,
        title: 'Python cheat sheet app',
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/Variables_screen': (context) => Variables(),
          '/ArithmeticOperators_screen': (context) => OperationScreen(),
          '/DataTypes_screen': (context) => DataType(),
          '/ControlFlow_screen': (context) => ControlFlow(),
          '/Introduction_screen': (context) => Intro(),
          '/Functions_screen': (context) => Functions(),
          '/Keywords_screen': (context) => Keywords(),
          '/List_screen': (context) => Lists(),
          '/Loops_screen': (context) => Loops(),
          '/Dictionaries_screen': (context) => Dictionaries(),
          '/String_screen': (context) => Strings(),
          '/ObjectOriented_screen': (context) => ObjectOriented(),
          '/ErrorExcept_screen': (context) => ErrorExcept(),
          '/SortingAlgo_screen': (context) => SortingAlgo(),
          'Settings_screen': (context) => Settings(),
        },
      );
    });
  }
}
