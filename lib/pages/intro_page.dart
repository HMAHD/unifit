// ignore_for_file: prefer_const_constructors, camel_case_types, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:unifit/Auth/user_auth/presentation/pages/login_page.dart';

@NowaClass()
class introPage extends StatelessWidget {
  const introPage({Key? key, required LoginPage child}) : super(key: key);

  void navigateToLoginPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  Future<void> automaticNavigation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    navigateToLoginPage(context);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      automaticNavigation(context);
    });

    return GestureDetector(
      onTap: () => navigateToLoginPage(context),
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
            //add your logo here
            Positioned(
              top: 680,
              width: 120,
              height: 120,
              child: Center(child: Image(image: AssetImage('assets/nsbm.png'))),
            ),
          ],
        ),
      ),
    );
  }
}
