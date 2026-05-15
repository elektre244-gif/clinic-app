import 'package:firebase_auth/firebase_auth.dart';



class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> login(String email, String password) async {
    final res = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return res.user;
  }
 

  static Future<void> sinOut() async {
    await FirebaseAuth.instance.signOut();
  }
  

   Future<UserCredential> register({
    required String email,
    required String password,
  }) async {

    final user = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    return user;
  }
}
