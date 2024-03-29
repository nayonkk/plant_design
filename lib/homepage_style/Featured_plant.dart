import 'package:flutter/material.dart';

 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Feature_style extends StatefulWidget {
  const Feature_style({
    super.key,
  });

  @override
  State<Feature_style> createState() => _Recomander_styleState();
}

class _Recomander_styleState extends State<Feature_style> {
  @override
  Widget build(BuildContext context) {
    mySnackbar(String text) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        text,
        selectionColor: Colors.amber,
        textScaler: TextScaler.linear(1.2),
        softWrap: true,
        textAlign: TextAlign.left,
      )));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Featured',
            style: TextStyle(
                fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          GestureDetector(
            onTap: () {
              mySnackbar(
                "Its not done yet! Wait bro...",
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ],
                  border: Border.all(color: Colors.black, width: 2),
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(15)),
              height: 40,
              width: 100,
              child: const Center(
                  child: Text(
                'More',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
