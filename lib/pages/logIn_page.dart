// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true; // Initially, the password is obscured.
  bool _rememberMe = false; // State variable for Remember Me

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10), // Empty space before the AppBar
          getCustomAppBar(context), // Custom AppBar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Add padding
              child: Column(
                children: [
                  const SizedBox(height: 90), // Add space between Text widgets
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Hi, Welcome Back! 👋',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10), // Add space between Text widgets

                  const SizedBox(height: 20),

                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Your Email.',
                        ),
                        validator: (value) {
                          // Check if the entered value is a valid email address using a regular expression.
                          // You can use a regex pattern to validate the email format.
                          final emailRegex = RegExp(
                              r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                          if (!emailRegex.hasMatch(value!)) {
                            return 'Enter a valid email address';
                          }
                          // Additional validation logic can be added here.
                          return 'Enter a valid email address'; // Return null for valid input.
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      obscureText:
                          _isObscure, // Use a boolean to toggle the obscureText property.
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Toggle the obscureText property and update the state.
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                          ),
                          const Text('Remember Me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle "Forget Password" action here.
                        },
                        child: const Text('Forget Password?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      // Use the Navigator to navigate to the desired page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()),
                      );
                    },
                    child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have account ? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const RegisterPage()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

PreferredSizeWidget getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(140.0), // Set the preferred height for the AppBar
    child: AppBar(
      backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
      elevation: 0.0, // Remove the shadow
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      title: Row(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.0), // Adjust the left padding as needed
              child: Text(
                "UniFit",
                style: TextStyle(
                  color: Color(0xFF0C303D),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Spacer(), // Add a spacer to separate the text and image
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/logo.png", // Replace with your image asset
              width: 150.0, // Set the width of the image as needed
              height: 150.0, // Set the height of the image as needed
            ),
          ),
        ],
      ),

      titleSpacing: 0.0, // Remove extra spacing around the title
      centerTitle: true, // Center the title horizontally
      toolbarHeight: 100.2, // Set the toolbar height
    ),
  );
}
