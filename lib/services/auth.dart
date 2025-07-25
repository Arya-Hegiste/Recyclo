import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/services/database.dart';

class AuthMethods {
  signInWithGoogle(BuildContext context) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount = 
        await googleSignIn.signIn();

    final GoogleSignInAuthentication? googleSignInAuthentication = 
        googleSignInAccount?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication?.idToken, 
      accessToken: googleSignInAuthentication?.accessToken,
    );

    UserCredential result = await firebaseAuth.signInWithCredential(credential);

    User? userDetails = result.user;

    Map<String, dynamic> userInfoMap={
      "email": userDetails!.email,
      "name": userDetails.displayName,
      "image": userDetails.photoURL,
      "Id": userDetails.uid,
    };

    await DatabaseMethods().addUserInfo(userInfoMap, userDetails.uid);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    }
}