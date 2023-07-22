import 'package:flutter/material.dart';

// ignore: camel_case_types
class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 2,
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Image.asset(
              "assets/unifit_logo.png",
              width: size.width / 1,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,  
        child: Container(
          width: 400,
          height: 50,
          color: const Color.fromARGB(255, 88, 84, 98),
          alignment: Alignment.bottomCenter,
        ),
      ),
    ]));
  }
}

class Square extends StatelessWidget {
  final Color color;

  const Square(
    this.color, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          color: color,
        ),
      ),
    ));
  }
}
