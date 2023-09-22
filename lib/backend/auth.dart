import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Check if the user is authenticated
  Future<bool> isUserAuthenticated() async {
    final user = _auth.currentUser;
    return user != null;
  }

  // Sign out the user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
