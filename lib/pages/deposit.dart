import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/reload.dart';
import 'package:unifit/widgets/drawer_menu.dart';

import 'user_profile.dart';

// ignore: camel_case_types
class Payment_Gateway extends StatefulWidget {
  const Payment_Gateway({super.key});

  @override
  State<Payment_Gateway> createState() => _Payment_GatewayState();
}

class _Payment_GatewayState extends State<Payment_Gateway> {
  @override
  Widget build(BuildContext context) {
    double devwidth = MediaQuery.of(context).size.width;
    double devheight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const CustomDrawer(),
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                getCustomAppBar(context),
                const SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/card.png',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Text(
                    'Card Details',
                    style: TextStyle(
                      fontSize: 22,
                      color: HexColor('324e60'),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Expiry Date',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'CVV',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Card Holder ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Reload()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(devwidth * 0.85, devheight / 14),
                      foregroundColor: Colors.white,
                      backgroundColor: HexColor('19a49c'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
            "Deposit",
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
