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
        body: Column(
      children: [
        const SizedBox(height: 35),
        getCustomAppBar(context),

        // Empty space before the AppBar
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Center(
            //add image
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/Avatar.png'),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'John Doe',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
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
          height: 20,
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

PreferredSizeWidget getCustomAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize:
        const Size.fromHeight(140.0), // Set the preferred height for the AppBar
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
                MaterialPageRoute(builder: (context) => const UserProfile()),
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
