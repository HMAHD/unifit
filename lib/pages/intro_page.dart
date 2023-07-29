import 'package:flutter/material.dart';

// ignore: camel_case_types
class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 236, 234, 239),
        ),
        body: Column(children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Center(
                child: Image.asset(
                  "assets/unifit_logo.png",
                  width: size.width / 1,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(120),
              topRight: Radius.circular(120),
            ),
            child: Container(
                height: 120, color: const Color.fromRGBO(221, 244, 238, 5)),
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
