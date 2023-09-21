import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logger/logger.dart';
import 'package:unifit/pages/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _EditProfileState();
}

class _EditProfileState extends State<HomePage> {
  bool _isObscure = true;
  final logger = Logger();

  PreferredSizeWidget getCustomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(
          140.0), // Set the preferred height for the AppBar
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: AppBar(
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 10,
                ),
                child: Row(
                  children: [
                    const Text(
                      "UniFit",
                      style: TextStyle(
                        color: Color.fromRGBO(48, 69, 91, 1.000),
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 120),
                    Stack(
                      children: [
                        Image.asset('assets/unifit.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          //add image here

          titleSpacing: 0,
          centerTitle: true,
          toolbarHeight: 90,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
          elevation: 6.0,
          backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double devheight = MediaQuery.of(context).size.height;
    double devwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35), // Empty space before the AppBar
            getCustomAppBar(context), // Custom AppBar
            const SizedBox(height: 25), // Empty space after AppBar
            const Text(
              'Create an account', // Replace this with the desired text
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sign Up for your fitness potential on UniFit!', // Replace this with the desired text
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Enter Your Username',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Enter Your Email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Enter Your Phone Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Enter Your Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(devwidth * 0.85, devheight / 14),
                foregroundColor: Colors.white,
                backgroundColor: HexColor('19a49c'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(
              height: devheight * 0.30,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Text('Login',
                          style: TextStyle(color: HexColor('4c548c'))),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Left-aligned text using Row widget
          ],
        ),
      ),
    );
  }
}
