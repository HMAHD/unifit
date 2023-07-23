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
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 90,
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
            height: 50,
          ),
          CustomTextField(
            icon: Icon(Icons.person),
            title: 'User name',
            isObscure: false,
            hint: "Enter Your User Name",
          ),
          CustomTextField(
            icon: Icon(Icons.password),
            title: 'Password',
            isObscure: true,
            hint: "Enter Your Password",
          ),
          CustomTextField(
            icon: Icon(Icons.phone),
            title: 'Phone Number',
            isObscure: false,
            hint: "Enter Your Number",
          ),
          //CustomTextField(),
          SizedBox(width: 500),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  primary: const Color.fromRGBO(25, 164, 156, 1)),
              child: const Text(
                ' Elevated Button',
                style: TextStyle(
                  fontSize: 15,
                ),
              ))
        ],
      ),
    );
  }
}
