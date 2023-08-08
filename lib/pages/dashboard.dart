// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    //double devHeight = MediaQuery.of(context).size.height;
    //double devWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.pink.shade400,
            toolbarHeight: 100,
            elevation: 14,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70))),
            title: Text(
              'Dashboard',
            ),
            actions: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                    ], shape: BoxShape.circle, color: Colors.pink.shade400),
                    child: Icon(
                      Icons.search,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                    ], shape: BoxShape.circle, color: Colors.pink.shade400),
                    child: Icon(
                      Icons.notifications,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 7, spreadRadius: 3, color: Colors.pink)
                    ], shape: BoxShape.circle, color: Colors.pink.shade400),
                    child: Icon(
                      Icons.logout,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 26,
                  )
                ],
              )
            ],
          )),
    );
  }
}
