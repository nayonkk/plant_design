import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class secound_screen extends StatelessWidget {
  const secound_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 600,
                width: 120,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.keyboard_backspace_outlined,
                          size: 30,
                          shadows: [
                            Shadow(offset: Offset(2, 0), blurRadius: 10),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/message.jpg'),
                      ),
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/twiter.jpg'),
                      ),
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/youtube.jpg'),
                      ),
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/tiktok.jpg'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/flower3.jpg'),
                      fit: BoxFit.cover),
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(70)),
                ),
                height: MediaQuery.of(context).size.height * .9,
                width: MediaQuery.of(context).size.width * .7,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
