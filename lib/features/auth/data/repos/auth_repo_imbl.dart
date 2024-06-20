import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/features/auth/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepository {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<Either<String,String>> signUp(
      {required String email, required String password, required String confirmPassword}) async {
    // Validate email format
    if (!_isValidEmail(email)) {
      return left("Invalid email format") ;
    }
    
    // Check if passwords match
    if (password != confirmPassword) {
      return left("Passwords do not match");
    }
    
    try {
      final UserCredential response = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return right("Sign-up successful: ${response.user?.email}");
    } on FirebaseAuthException catch (e) {
      return left(_handleFirebaseAuthException(e));
    } catch (e) {
      return left("An unknown error occurred: $e");
    }
  }

  @override
  Future<Either<String,String>> resetPassword({required String email}) async {
    if (!_isValidEmail(email)) {
      return left("Invalid email format");
    }
    
    try {
      await auth.sendPasswordResetEmail(email: email);
      return right("Check your mail for reset password");
    } on FirebaseAuthException catch (e) {
      return left(_handleFirebaseAuthException(e));
    } catch (e) {
      return left("An unknown error occurred: $e");
    }
  }

  @override
  Future<Either<String,String>> signIn(
      {required String email, required String password}) async {
    if (!_isValidEmail(email)) {
      return left("Invalid email format");
    }
    
    try {
      final UserCredential response = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return right("Sign-in successful: ${response.user?.email}");
    } on FirebaseAuthException catch (e) {
      return left(_handleFirebaseAuthException(e));
    } catch (e) {
      return left("An unknown error occurred: $e");
    }
  }

  // Utility method to validate email format
  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegex.hasMatch(email);
  }

  // Utility method to handle FirebaseAuthException
  String _handleFirebaseAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return "The email address is not valid.";
      case 'user-disabled':
        return "The user has been disabled.";
      case 'user-not-found':
        return "No user found with this email.";
      case 'wrong-password':
        return "Incorrect password.";
      case 'email-already-in-use':
        return "The email address is already in use.";
      case 'operation-not-allowed':
        return "Email/password accounts are not enabled.";
      case 'weak-password':
        return "The password is too weak.";
      default:
        return "An error occurred: ${e.message}";
    }
  }
}
