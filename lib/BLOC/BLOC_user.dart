import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:examen_parcial/Repository/authRepository.dart';

class UserBloc implements Bloc {
  final _authRepository = AuthRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?>? get authStatus => streamFirebase;

  Future<UserCredential> signIn() {
    return _authRepository.signInFirebase();
  }

  @override
  void dispose() {}
}
