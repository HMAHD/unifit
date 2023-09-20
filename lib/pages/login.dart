/// This code snippet defines the `LoginPage` class, which is a part of a Flutter application.
/// The class represents the UI for a login page and includes text fields for email and password,
/// a checkbox for remembering the user, and a login button. It also includes helper functions
/// for getting the email and password from the text fields, showing error messages, and navigating
/// to the next screen after successful login.
///
/// Example Usage:
/// ```dart
/// LoginPage loginPage = LoginPage();
/// Widget loginPageWidget = loginPage.build(context);
/// ```
///
/// Inputs:
/// - `BuildContext context`: The context of the current widget tree.
///
/// Flow:
/// 1. The `build` method is called when the widget is being built.
/// 2. The `build` method returns a `Scaffold` widget with a column layout.
/// 3. The column layout includes a custom app bar, a form with text fields for email and password,
///    a checkbox for remembering the user, a "Forget Password?" button, a login button, and a
///    "Don't have an account?" text.
/// 4. The login button has an `onTap` callback that gets the email and password from the text fields,
///    calls the `signIn` method of the `supabase.auth` object to authenticate the user, and handles
///    the response.
/// 5. If there is an error in the response, the `showErrorMessage` function is called to display the
///    error message.
/// 6. If the authentication is successful, the `navigateToNextScreen` function is called to navigate
///    to the next screen.
///
/// Outputs:
/// - `Widget`: The built widget tree for the login page.
// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:logger/logger.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/register.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';

final logger = Logger();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool _rememberMe = false;

  //final supabase = Supabase.instance.client;

  @override
  Widget build(BuildContext context) {
    double devheight = MediaQuery.of(context).size.height;
    double devwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 35),
          getCustomAppBar(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: devheight * 0.05),
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
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Email',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                            )),
                      ),
                    ],
                  ),
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          labelText: 'Enter your email.',
                        ),
                        validator: (value) {
                          final emailRegex = RegExp(
                              r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                          if (!emailRegex.hasMatch(value!)) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('Password',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        labelText: 'Enter your password.',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      SizedBox(width: devheight * 0.05),
                      TextButton(
                        onPressed: () {
                          // Handle "Forget Password" action here.
                        },
                        child: const Text('Forget Password?',
                            style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                  SizedBox(height: devheight * 0.12),
                  InkWell(
                    // onTap: () async {
                    //   final email =
                    //       getEmailFromTextField(); // Replace with your implementation
                    //   final password =
                    //       getPasswordFromTextField(); // Replace with your implementation

                    //   final response = await supabase.auth.signIn(
                    //     email: email,
                    //     password: password,
                    //   );

                    //   if (response.error != null) {
                    //     final errorMessage = response.error!.message;
                    //     showErrorMessage(errorMessage);
                    //   } else {
                    //     final user = response.data;
                    //     logger.i('Sign-in successful: ${user!.email}');
                    //     navigateToNextScreen();
                    //   }
                    // },
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
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
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: devheight * 0.06,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ? ",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Text('Sign Up',
                        style: TextStyle(color: HexColor('4c548c'))),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // Helper functions:
  String getEmailFromTextField() {
    // Implement logic to get the email from the text field.
    return 'example@example.com'; // Replace with your implementation.
  }

  String getPasswordFromTextField() {
    // Implement logic to get the password from the text field.
    return 'password'; // Replace with your implementation.
  }

  void showErrorMessage(String message) {
    // Implement logic to show the error message to the user.
    // You can use a SnackBar or any other method you prefer.
  }

  void navigateToNextScreen() {
    // Implement logic to navigate to the next screen after successful login.
    // You can use Navigator.push() to navigate to another page.
  }
}

PreferredSizeWidget getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(140.0), // Set the preferred height for the AppBar
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
