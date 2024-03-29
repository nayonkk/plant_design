import 'dart:async';

import 'package:flutter/material.dart';
 import 'package:plant_design/Ui_helper.dart';
import 'package:plant_design/homepage.dart';

class Flash_screen extends StatefulWidget {
  const Flash_screen({super.key});

  @override
  State<Flash_screen> createState() => _Flash_screenState();
}

class _Flash_screenState extends State<Flash_screen> {
  @override
  void initState() {
   
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => homepage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/screen.jpg"),
              fit: BoxFit.cover)),
      height: double.infinity,
      width: double.infinity,
    ));
  }
}
