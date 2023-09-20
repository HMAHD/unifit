import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/dashboard.dart';
import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/drawer_menu.dart';

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
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;

    return Scaffold(
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 35),
          getCustomAppBar(context),
          SizedBox(height: devHeight * 0.10), // Add a SizedBox here
          Image.asset(
            "assets/image 1.png",
            width: devWidth * 0.5,
            height: devHeight * 0.25,
          ),
          SizedBox(height: devHeight * 0.02),
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
            height: devHeight * 0.01,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Transfers are reviewed which may result in delays or funds being frozen.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(height: devHeight * 0.05),
          const Text("RS 500 ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'Poppins',
              )),
          SizedBox(height: devHeight * 0.13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width, height / 13),
                foregroundColor: Colors.white,
                backgroundColor: HexColor('19a49c'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'Back to Dashboard',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
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
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: IconButton(
                  padding: const EdgeInsets.only(left: 12, bottom: 20),
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(48, 69, 91, 1.000),
                    size: 45,
                  ),
                  tooltip: 'menu Icon',
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              );
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Reload",
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
}
