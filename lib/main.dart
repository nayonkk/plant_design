import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_design/flash_scren.dart';
 import 'package:plant_design/homepage.dart';
import 'package:plant_design/secound_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      home:const Flash_screen(),
      //  secound_screen(),
      //
    );
  }
}
