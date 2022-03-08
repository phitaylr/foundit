import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginButton extends StatelessWidget {
  final updateState;

  const LoginButton({this.updateState});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          color: Colors.blueAccent,
          constraints: BoxConstraints(
              minHeight: 50, minWidth: 100, maxWidth: 300, maxHeight: 50),
          child: SignInButton(
              Buttons.Google,
              text: "Sign in",
              onPressed: () async {
                try {
                  GoogleAuthProvider googleProvider = GoogleAuthProvider();
                  await FirebaseAuth.instance.signInWithPopup(googleProvider);
                  updateState();
                } catch (e) {
                  print(e.toString());
                }
              }
          ),
        )
    );
  }
}