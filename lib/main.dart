import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:python_cheat_sheet_app/screens/control_flow_screen.dart';
import 'package:python_cheat_sheet_app/screens/data_type_screen.dart';
import 'package:python_cheat_sheet_app/screens/dictionaries.dart';
import 'package:python_cheat_sheet_app/screens/error_except_screen.dart';
import 'package:python_cheat_sheet_app/screens/functions_screen.dart';
import 'package:python_cheat_sheet_app/screens/home_screen.dart';
import 'package:python_cheat_sheet_app/screens/intro_screen.dart';
import 'package:python_cheat_sheet_app/screens/keyword_screen.dart';
import 'package:python_cheat_sheet_app/screens/lists.dart';
import 'package:python_cheat_sheet_app/screens/loops.dart';
import 'package:python_cheat_sheet_app/screens/oop_screeen.dart';
import 'package:python_cheat_sheet_app/screens/operations_screen.dart';
import 'package:python_cheat_sheet_app/screens/sorting_algo.dart';
import 'package:python_cheat_sheet_app/screens/strings_screen.dart';
import 'package:python_cheat_sheet_app/screens/var_screen.dart';
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
          '/Var_screen': (context) => VarScreen(),
          '/Arithmetic_screen': (context) => OperationScreen(),
          '/DataT_screen': (context) => DataType(),
          '/Control_screen': (context) => ControlFlow(),
          '/Intro_screen': (context) => Intro(),
          '/Func_screen': (context) => Functions(),
          '/Key_screen': (context) => Keywords(),
          '/List_screen': (context) => Lists(),
          '/Loops_screen': (context) => Loops(),
          '/Dict_screen': (context) => Dictionaries(),
          '/String_screen': (context) => Strings(),
          '/oop_screen': (context) => ObjectOriented(),
          '/error_screen': (context) => ErrorExcept(),
          '/sort_screen': (context) => SortingAlgo(),
        },
      );
    });
  }
}
