import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/user_profile.dart';
import 'package:unifit/widgets/drawer_menu.dart';

class CountGym extends StatefulWidget {
  const CountGym({super.key});

  @override
  State<CountGym> createState() => _CountGymState();
}

class _CountGymState extends State<CountGym> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          getCustomAppBar(context),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 85),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: SizedBox(
                            height: height / 1.8,
                            width: width,
                            child: Card(
                                margin: const EdgeInsets.only(top: 10),
                                elevation: 15,
                                color:
                                    const Color.fromRGBO(255, 255, 255, 1.000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(children: [
                                  const Positioned(
                                    top: 80,
                                    left: 10,
                                    right: 10,
                                    child: Center(
                                      child: Text(
                                        'Payment Confirmation',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(48, 69, 91, 1.000),
                                          fontSize: 22,
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 150,
                                    left: 22,
                                    child: Text(
                                      'Spent Time',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(48, 69, 91, 1.000),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 150,
                                    right: 22,
                                    child: Text(
                                      '01:00:10',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(48, 69, 91, 1.000),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 210,
                                    left: 22,
                                    child: Text(
                                      'Cost',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(48, 69, 91, 1.000),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 210,
                                    right: 22,
                                    child: Text(
                                      'RS 100/ h',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(48, 69, 91, 1.000),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 270,
                                    left: 22,
                                    child: Text(
                                      'Total',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('ff2d00'),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 270,
                                    right: 22,
                                    child: Text(
                                      'RS 100.10',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('ff2d00'),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 350,
                                    left: 25,
                                    right: 20,
                                    child: SizedBox(
                                      height: 55,
                                      width: 50,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(
                                              28, 232, 164, 1.000),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        child: Text(
                                          'Ok, Send Now !',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: HexColor('#ffffff'),
                                            fontSize: 20,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]))),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 33),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: HexColor('838f9c'),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/gym.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
            "Countdown",
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
