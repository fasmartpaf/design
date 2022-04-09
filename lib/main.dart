import 'package:design/Screens/Adminstratore.dart';
import 'package:flutter/material.dart';

import 'Screens/PlannetNameScreen/PlannetNameSearch.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       // home:  HomePage()
    );
  }
}

///All Screen will be called the Word C this is the easiest way to calling another Screeb