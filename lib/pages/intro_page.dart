// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';

@NowaClass()
// ignore: camel_case_types
class introPage extends StatelessWidget {
  const introPage({super.key});

  @NowaFunc()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: const Alignment(
          0,
          0,
        ),
        children: [
          Positioned(
            width: 500,
            height: 250,
            top: 639,
            left: -53.5,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(
                  0xffddf4ee,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    250,
                  ),
                  topRight: Radius.circular(
                    250,
                  ),
                  bottomLeft: Radius.circular(
                    0,
                  ),
                  bottomRight: Radius.circular(
                    0,
                  ),
                ),
                boxShadow: [],
              ),
            ),
          ),
          Positioned(
            top: -69,
            left: -53.5,
            width: 500,
            height: 250,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(
                  0x40a4a4d4,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    0,
                  ),
                  topRight: Radius.circular(
                    0,
                  ),
                  bottomLeft: Radius.circular(
                    250,
                  ),
                  bottomRight: Radius.circular(
                    250,
                  ),
                ),
                boxShadow: [],
              ),
            ),
          ),
          const Positioned(
            top: 194.5,
            left: -94.5,
            width: 582,
            height: 419,
            child: Image(
              image: AssetImage(
                "assets/unifit_logo.png",
              ),
              fit: BoxFit.fitWidth,
              colorBlendMode: BlendMode.saturation,
            ),
          )
        ],
      ),
    );
  }
}
