import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/edit_profile.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('14a49c'),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          height: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/Avatar.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.values[2],
            children: [
              const Text('John Doe',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600)),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfile()),
                    );
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
        const Text(
          'Johndoe@gmail.com',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ]),
    );
  }
}
