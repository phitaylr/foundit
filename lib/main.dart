import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foundit/screens/admin.dart';
import 'package:foundit/screens/homescreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  runApp(const FoundItApp());
}

class FoundItApp extends StatelessWidget {
  const FoundItApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TVS Found It',
      theme: ThemeData(),initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FoundItHomePage(title: 'Found It!'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/admin': (context) => const AdminScreen(),
      },
    );
  }
}
