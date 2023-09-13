import 'package:flutter/material.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/user_profile.dart';

class Reload extends StatefulWidget {
  const Reload({super.key});

  @override
  State<Reload> createState() => _ReloadState();
}

class _ReloadState extends State<Reload> {
  double devHeight = 0;
  double devWidth = 0;

  @override
  Widget build(BuildContext context) {
    // Access MediaQuery in the build method
    devHeight = MediaQuery.of(context).size.height;
    devWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            getCustomAppBar(context),
            SizedBox(height: devHeight * 0.10), // Add a SizedBox here
            Image.asset(
              "assets/10.png",
              width: devWidth * 0.5,
              height: devHeight * 0.25,
            ),
            SizedBox(height: devHeight * 0.05),
            const Text(
              "Transfer Successful",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              height: devHeight * 0.005,
            ),
            const Text(
              'Transfers are reviewed which may result in delays or funds being frozen.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: devHeight * 0.02),
            const Text("500 RS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                )),
            SizedBox(height: devHeight * 0.02),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3.5,
                minimumSize: Size(devWidth * 0.55, devHeight * 0.07),
                backgroundColor: const Color.fromARGB(220, 28, 232, 164),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: const Text(
                "Back to Dashboard",
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
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 1.0,
          vertical: 2.0,
        ),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), // Adjust the radius as needed
              topRight: Radius.circular(20.0), // Adjust the radius as needed
              bottomLeft: Radius.circular(20.0), // Adjust the radius as needed
              bottomRight: Radius.circular(20.0), // Adjust the radius as needed
            ),
          ),
          leading: IconButton(
            padding: EdgeInsets.only(left: 12, bottom: devHeight * 0.04),
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Color.fromRGBO(48, 69, 91, 1.000),
                size: devWidth * 0.1,
              ),
            ),
            tooltip: 'menu Icon',
            onPressed: () {},
          ),
          title: Padding(
            padding: EdgeInsets.only(bottom: devHeight * 0.02),
            child: Text(
              "Profile",
              style: TextStyle(
                color: Color.fromRGBO(48, 69, 91, 1.000),
                fontSize: devWidth * 0.08,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(
                  right: devWidth * 0.08, bottom: devHeight * 0.04),
              icon: Icon(
                Icons.account_box,
                color: Color.fromRGBO(48, 69, 91, 1.000),
                size: devWidth * 0.1,
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
          titleSpacing: 0.10,
          centerTitle: true,
          toolbarHeight: 90,
          elevation: 6.0,
          backgroundColor: const Color.fromRGBO(70, 245, 202, 1),
        ),
      ),
    );
  }
}
