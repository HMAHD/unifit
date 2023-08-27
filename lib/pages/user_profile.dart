//tharusha
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                width: width,
                height: 230,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromRGBO(228, 247, 242, 1.000),
                ),
                child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Text('Personal Information',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                        Positioned(
                          top: 50,
                          left: 10,
                          child: Text('Your Name',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                        Positioned(
                          top: 50,
                          right: 10,
                          child: Text('John Doe',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                        Positioned(
                          top: 100,
                          left: 10,
                          child: Text('Email',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                        Positioned(
                          top: 100,
                          right: 10,
                          child: Text('Johndoe@gmail.com',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                        Positioned(
                          top: 150,
                          left: 10,
                          child: Text('Contact',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                        Positioned(
                          top: 150,
                          right: 10,
                          child: Text('0771234567',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(107, 114, 128, 1.000))),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //add elevator button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(width, height / 13),
                  foregroundColor: Colors.white,
                  backgroundColor: HexColor('19a49c'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: const Text(
                  'Back to Home',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
