import 'package:flutter/material.dart';
import 'package:furnitureapp/ui/screens/detail_screen/detail_screen.dart';
import 'package:furnitureapp/ui/screens/main_screen/main_screen.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins'
      ),
      home: MainScreen(),
    );
  }
}
