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
         body:
         Column(
            children: [
              Row(
                children: [
                    ListView(

                    )
                  ]
              ),
                
              
              Column(
                children: <Widget>[
                  // Expanded(
                  //   child: SearchInformation(),
                  //   ),
                 
        //        ],
        //      ),
        //      Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       child: TextField(
        //         controller: fieldText,
        //         decoration: InputDecoration(
        //           contentPadding: const EdgeInsets.symmetric(
        //             vertical: 15.0
        //           ),
        //           fillColor: Colors.white,
        //           filled: true,
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(30.0),
        //             borderSide: const BorderSide(width: 0.8)
        //           ),
        //           enabledBorder: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(30.0),
        //             borderSide: BorderSide(width: 0.8, color: Theme.of(context).backgroundColor)
        //           ),
                  
        //           hintText: "Search for a lost item",
        //         prefixIcon: const Icon(Icons.search, size: 30,),
        //         suffixIcon: IconButton(icon: const Icon(Icons.clear), onPressed: (){
        //           fieldText.clear();
        //         })
        //         ),
                
        //       ),
                ],
             ),

         ],
       ),
      
    );
    
  }
}