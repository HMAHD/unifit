//tharusha
import 'package:flutter/material.dart';
// create stateless widget

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(220, 28, 232, 164),
          toolbarHeight: 100,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.menu,
                size: 40,
                color: Color.fromRGBO(48, 69, 91, 1.000),
              ),
            ),
          ),
          title: const Center(
            child: Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(48, 69, 91, 1.000),
                fontSize: 30,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          actions: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Color.fromRGBO(48, 69, 91, 1.000),
                  ),
                ),
                const SizedBox(
                  width: 26,
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  //backgroundImage: AssetImage('assets/images/unifit_logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Tharusha',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: width,
                height: height / 4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(48, 69, 91, 1.000),
                ),
              ),
            ),
          ],
        ));
  }
}
