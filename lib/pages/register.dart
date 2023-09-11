import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
<<<<<<< HEAD
  //bool _isObscure = true;  // show the password or not
=======
  final logger = Logger();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  PreferredSizeWidget getCustomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(
          140.0), // Set the preferred height for the AppBar
      child: AppBar(
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "UniFit",
            style: TextStyle(
              color: Color(0xFF0C303D),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: null, // Remove the SizedBox to keep the AppBar title centered
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                'assets/app_logo.png', // Replace with your actual image path
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],

        titleSpacing: 0.0,
        centerTitle: true,
        toolbarHeight: 100.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        elevation: 0.00,
        backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
      ),
    );
  }

>>>>>>> main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
<<<<<<< HEAD
          const SizedBox(height: 10),
          getCustomAppBar(context),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Unlock your fitness potential on UNIFIT !",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Username',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Email',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Your Phone Number',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Already have an account? ',
                              style: TextStyle(fontSize: 15),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
=======
          const SizedBox(height: 35), // Empty space before the AppBar
          getCustomAppBar(context), // Custom AppBar
          const SizedBox(height: 20), // Empty space after AppBar

          const Text(
            'Create an account', // Replace this with the desired text
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Text(
            'Unlock your fitness potential on UNIFIT!', // Replace this with the desired text
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Phone Number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Your Password',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // Gather user data for registration or login here
                final username = usernameController.text.trim();
                final email = emailController.text.trim();
                final phoneNumber = phoneNumberController.text.trim();
                final password = passwordController.text.trim();

                // Implement your registration or login logic here
                // For example, you can call a registration or login function with the gathered data.
                // Replace the below line with your actual implementation.
                logger.i('Registration/Login button pressed');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                // Customize other button styles here, if needed.
              ),
              child: const Text('Register/Login'),
            ),
          ),

          const Text(
            'Unlock your fitness potential on UNIFIT!', // Replace this with the desired text
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
>>>>>>> main
        ],
      ),
    );
  }

<<<<<<< HEAD
  // Add other content of the page below the TextField
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
=======
  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }
>>>>>>> main
}
