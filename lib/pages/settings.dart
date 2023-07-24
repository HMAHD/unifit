import 'package:flutter/material.dart';
import 'package:unifit/widgets/custom_text_field.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: devHeight * 0.05,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(70, 245, 202, 1),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.account_box)),
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   width: 250,
            // ),
            SizedBox(
              height: devHeight * 0.05,
            ),
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
                backgroundColor: Color.fromRGBO(70, 245, 202, 1),
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
}
