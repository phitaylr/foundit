import 'dart:async';
import 'dart:html';
import 'package:flutter/widgets.dart';
import 'package:foundit/widgets/items.dart';
import 'package:foundit/widgets/mainmenu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:foundit/widgets/loginbutton.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foundit/widgets/searchbar.dart';
import 'package:foundit/widgets/typetags.dart';



class SearchPage extends StatefulWidget{
  const SearchPage({Key? key}) : super(key: key);
  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  final fieldText = TextEditingController();
@override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back to home screen',
          onPressed: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          }
          ),
      ),
        body: Center(
         child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                 child: TypeTags(),
              )
            ],
          ),
        ),
    );
    
  }
}