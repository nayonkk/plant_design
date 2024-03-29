import 'package:flutter/material.dart';
 import 'package:plant_design/fullpic.dart';

class uiHelper {
  static full_images(String images, double hight, double width) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover)),
    );
  }

  static Decoration_Images(
    String image,
    String text,
    String price,
    String amount,
  ) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>fullpic()));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Container(
              height: 255,
              width: 170,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          amount,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  image: DecorationImage(
                      image: AssetImage(image.toString()), fit: BoxFit.cover),
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 170,
            ),
          ],
        ),
      ),
    );
  }
}
