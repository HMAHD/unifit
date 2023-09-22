import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Function to generate a unique 10-digit account number
  Future<String> generateUniqueAccountNumber() async {
    Random random = Random();
    String accountNumber;
    QuerySnapshot? existingUsers;

    do {
      // Generate a random 10-digit number
      accountNumber = (1000000000 + random.nextInt(9000000000)).toString();

      // Check if the account number already exists in Firestore
      var query = _firestore
          .collection('users')
          .where('accountNumber', isEqualTo: accountNumber);
      existingUsers = await query.get();

      // If the account number already exists, generate a new one
    } while (existingUsers.docs.isNotEmpty);

    return accountNumber;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = authResult.user;

      // Check if the user has an account number in Firestore
      var userData = await _firestore.collection('users').doc(user?.uid).get();
      if (!userData.exists) {
        // If the user does not have an account number, generate one and store it
        String accountNumber = generateUniqueAccountNumber() as String;
        await _firestore.collection('users').doc(user?.uid).set({
          'accountNumber': accountNumber,
          'creditAmount':
              0, // Initialize with zero balance or any other default value
          // Other user data fields
        });
      }

      return user;
    } catch (error) {
      print("Error signing in: $error");
      return null;
    }
  }
}
