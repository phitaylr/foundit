import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foundit/widgets/loginbutton.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  reloadUser() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back to home screen',
          onPressed: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          }
          ),
      ),
      body: FirebaseAuth.instance.currentUser == null ? LoginButton(updateState: reloadUser,) : Text('logged in'),
      );
  }
}

