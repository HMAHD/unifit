import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35), // Empty space before the AppBar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(70, 245, 202, 1),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Color.fromRGBO(48, 69, 91, 1.000),
                            size: 30,
                          )),
                    ),
                    const Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(48, 69, 91, 1.000),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.account_box,
                            color: Color.fromRGBO(48, 69, 91, 1.000),
                            size: 40,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}
