
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGoogleAndAppleIcons extends StatelessWidget {
  const CustomGoogleAndAppleIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () async {
        //  GoogleSignIn();
          },
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Image.asset("assets/image/images.jpeg", fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 40.w),
        InkWell(
          onTap: () {
            // SignInWithApple();
          },
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Image.asset("assets/image/images2.png", fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}

// class GoogleSignIn {
//      Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().sigin();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.idToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }
// }
// class SinInWithApple{
//   get sha256 => null;

//   String generateNonce([int length = 32]) {
//   final charset =
//       '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
//   final random = Random.secure();
//   return List.generate(length, (_) => charset[random.nextInt(charset.length)])
//       .join();
// }

// /// Returns the sha256 hash of [input] in hex notation.
// String sha256ofString(String input) {
//   final bytes = utf8.encode(input);
//   final digest = sha256.convert(bytes);
//   return digest.toString();
// }

// Future<UserCredential> signInWithApple() async {
//   // To prevent replay attacks with the credential returned from Apple, we
//   // include a nonce in the credential request. When signing in with
//   // Firebase, the nonce in the id token returned by Apple, is expected to
//   // match the sha256 hash of `rawNonce`.
//   final rawNonce = generateNonce();
//   final nonce = sha256ofString(rawNonce);

//   // Request credential for the currently signed in Apple account.
//   final appleCredential = await SignInWithApple.getAppleIDCredential(
//     scopes: [
//       AppleIDAuthorizationScopes.email,
//       AppleIDAuthorizationScopes.fullName,
//     ],
//     nonce: nonce,
//   );

//   // Create an `OAuthCredential` from the credential returned by Apple.
//   final oauthCredential = OAuthProvider("apple.com").credential(
//     idToken: appleCredential.identityToken,
//     rawNonce: rawNonce,
//   );

//   // Sign in the user with Firebase. If the nonce we generated earlier does
//   // not match the nonce in `appleCredential.identityToken`, sign in will fail.
//   return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
// }
// }