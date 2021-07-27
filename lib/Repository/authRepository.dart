import 'authFirebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _authFirebase = AuthFirebase();
  Future<UserCredential> signInFirebase() => _authFirebase.singIn();
}
