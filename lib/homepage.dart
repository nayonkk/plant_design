

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_design/fullpic.dart';
import 'package:plant_design/fullpic.dart';
import 'package:plant_design/homepage_style/Featured_plant.dart';
import 'package:plant_design/Ui_helper.dart';
import 'package:plant_design/homepage_style/Recomanded.dart';
import 'package:plant_design/homepage_style/Textfield_details.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        leading: const Icon(
          Icons.menu,
          fill: .10,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Textfield_details(),
            const Recomander_style(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  uiHelper.Decoration_Images(
                    'assets/images/flower1.jpg',
                    "Rose",
                    "Price",
                    "\$250",
                  ),
                  uiHelper.Decoration_Images(
                    'assets/images/flower2.jpg',
                    "Jasmine",
                    "Price",
                    "\$300",
                  ),
                  uiHelper.Decoration_Images(
                    'assets/images/flower3.jpg',
                    "Dahlia",
                    "Price",
                    "\$150",
                  ),
                  uiHelper.Decoration_Images(
                    'assets/images/flower4.jpg',
                    "Sunflower",
                    "Price",
                    "\$200",
                  ),
                  uiHelper.Decoration_Images(
                    'assets/images/flower5.jpg',
                    "Lotus",
                    "Price",
                    "\$100",
                  ),
                ],
              ),
            ),
            const Feature_style(),
            uiHelper.full_images('assets/images/flower3.jpg', 250, 400),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(0, -4), blurRadius: 10)
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 28,
                color: Colors.teal,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 28,
                color: Colors.teal,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.security,
                size: 28,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
