// firebase_auth_services.dart
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  Future<(User?, String?)> signUpWithEmailAndPassword(
      String email, String password, String fullName) async {
    try {
      // Check internet connection first
      bool hasInternet = await checkInternetConnection();
      if (!hasInternet) {
        return (null, 'No internet connection. Please check your network.');
      }

      // Create user account
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // If user creation is successful, store additional user data
      if (credential.user != null) {
        await _firestore.collection('users').doc(credential.user!.uid).set({
          'fullName': fullName,
          'email': email,
          'createdAt': FieldValue.serverTimestamp(),
        });

        // Update user profile
        await credential.user!.updateDisplayName(fullName);
        
        return (credential.user, null);
      }
      
      return (null, 'Failed to create user profile');
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code} - ${e.message}');
      switch (e.code) {
        case 'network-request-failed':
          return (null, 'Network error. Please check your connection.');
        case 'email-already-in-use':
          return (null, 'This email is already registered');
        case 'invalid-email':
          return (null, 'Invalid email address');
        case 'operation-not-allowed':
          return (null, 'Email/password accounts are not enabled');
        case 'weak-password':
          return (null, 'Password should be at least 6 characters');
        default:
          return (null, e.message ?? 'Registration failed');
      }
    } catch (e) {
      print('Unexpected error: $e');
      return (null, 'An unexpected error occurred');
    }
  }
}