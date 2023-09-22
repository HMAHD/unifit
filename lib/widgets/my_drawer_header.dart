import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Authentication
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unifit/pages/edit_profile.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  String? _userName; // To store the user's username
  String? _email; // To store the user's email

  @override
  void initState() {
    super.initState();
    _fetchUserData(); // Fetch user data when the widget is initialized
  }

  Future<void> _fetchUserData() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        setState(() {
          _userName =
              user.displayName ?? 'Akash Hasendra'; // Display name or default
          _email = user.email ?? 'akash@gmail.com'; // Email or default
        });
      }
    } catch (e) {
      print("Error fetching user data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('14a49c'),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _userName ?? 'Akash Hasendra',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            _email ?? 'Johndoe@gmail.com',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
