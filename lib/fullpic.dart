import 'package:flutter/material.dart';

class fullpic extends StatelessWidget {
  const fullpic({super.key});

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
