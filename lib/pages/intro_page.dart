// ignore_for_file: prefer_const_constructors, camel_case_types, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:unifit/pages/dashboard.dart'; // Import the dashboard page

@NowaClass()
class introPage extends StatelessWidget {
  const introPage({Key? key}) : super(key: key);

  void navigateToDashboard(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Dashboard()),
    );
  }

  Future<void> automaticNavigation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    navigateToDashboard(context);
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
                height: 100, color: const Color.fromRGBO(221, 244, 238, 5)),
          )
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
=======
    WidgetsBinding.instance.addPostFrameCallback((_) {
      automaticNavigation(context);
    });

    return GestureDetector(
      onTap: () => navigateToDashboard(context),
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          alignment: const Alignment(0, 0),
          children: [
            Positioned(
              width: 500,
              height: 250,
              top: 639,
              left: -53.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffddf4ee),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(250),
                    topRight: Radius.circular(250),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: const [],
                ),
              ),
            ),
            Positioned(
              top: -69,
              left: -53.5,
              width: 500,
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x40a4a4d4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(250),
                    bottomRight: Radius.circular(250),
                  ),
                  boxShadow: const [],
                ),
              ),
            ),
            const Positioned(
              top: 194.5,
              left: -94.5,
              width: 582,
              height: 419,
              child: Image(
                image: AssetImage("assets/unifit_logo.png"),
                fit: BoxFit.fitWidth,
                colorBlendMode: BlendMode.saturation,
              ),
            ),
          ],
>>>>>>> main
        ),
      ),
    );
  }
}
