// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unifit/pages/reload.dart';
import 'package:unifit/pages/user_profile.dart';

import '../widgets/custom_text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: devHeight * 0.01,
            ),
            getCustomAppBar(context),
            SizedBox(
              height: devHeight * 0.05,
            ),
            // Container(
            //   width: double.infinity,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(15),
            //     color: const Color.fromRGBO(70, 245, 202, 1),
            //   ),
            //   child: Center(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            //         const Text(
            //           "Edit Profile",
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //             color: Color.fromARGB(255, 0, 0, 0),
            //           ),
            //         ),
            //         IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            //       ],
            //     ),
            //   ),
            // ),
            // const SizedBox(
            //   width: 250,
            // ),
            // SizedBox(
            //   height: devHeight * 0.05,
            // ),
            const CustomTextField(
              icon: Icon(Icons.person),
              title: 'Full Name',
              isObscure: false,
              hint: "Enter Your Full Name",
            ),
            SizedBox(
              height: devHeight * 0.005,
            ),
            const CustomTextField(
              icon: Icon(Icons.email_outlined),
              title: 'E-mail',
              isObscure: false,
              hint: "Enter Your Email",
            ),
            SizedBox(
              height: devHeight * 0.005,
            ),
            const CustomTextField(
              icon: Icon(Icons.phone),
              title: 'Email',
              isObscure: false,
              hint: "Enter Your Number",
            ),

            SizedBox(
              height: devHeight * 0.05,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3.5,
                minimumSize: const Size(330, 60),
                backgroundColor: Color.fromRGBO(25, 164, 156, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget getCustomAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(
          140.0), // Set the preferred height for the AppBar
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.only(left: 12, bottom: 20),
            icon: const Icon(
              Icons.menu,
              color: Color.fromRGBO(48, 69, 91, 1.000),
              size: 45,
            ),
            tooltip: 'menu Icon',
            onPressed: () {},
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Color.fromRGBO(48, 69, 91, 1.000),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(right: 32.0, bottom: 20),
              icon: const Icon(
                Icons.account_box,
                color: Color.fromRGBO(48, 69, 91, 1.000),
                size: 45,
              ),
              tooltip: 'Account Icon',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Reload()),
                );
              },
            ),
          ],
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
}
