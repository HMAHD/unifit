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
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Center(
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 255, 255, 255),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'NSBM',
                style: TextStyle(fontSize: 40),
              ),
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 50,
                width: size.width / 2,
                // ignore: prefer_const_constructors
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                    Square(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}

class Square extends StatelessWidget {
  const Square({
    super.key,
  });

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            height: 20,
            color: Color.fromARGB(255, 58, 255, 127),
          ),
        ),
      ),
    );
  }
}
