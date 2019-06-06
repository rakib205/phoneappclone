import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:phone_app_clone/bottom_navbar.dart';


void main() {
   SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
    );
  
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.white,
      // ),
      home: BottomNavBar(),
    );
    
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavBar();
  }
}






