import 'package:flutter/material.dart';

class Textfield_details extends StatelessWidget {
  const Textfield_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          height: 200,
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: EdgeInsets.only(bottom: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi Kormokar!',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/images/car.jpg'),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 54,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
                      hintText: 'Searching',
                      hintStyle: TextStyle(color: Colors.black87)),
                ),
              ),
            ))
      ],
    );
  }
}
