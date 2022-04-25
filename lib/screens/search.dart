import 'dart:async';
import 'dart:html';
import 'package:flutter/widgets.dart';
import 'package:foundit/widgets/items.dart';
import 'package:foundit/widgets/itemstable.dart';
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
<<<<<<< Updated upstream
        body: Column(
        children: <Widget>[
          ListTile(
           onTap: null,
          leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          ),
        //   trailing: CircleAvatar(
        //      backgroundColor: Colors.transparent,
        //   ),
          title:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Expanded(
               child: Container(
                 child: Text("water bottle"),
                //  decoration: BoxDecoration(
                //    color: Colors.blue,
                //  ),
                 ),
               ),
               Expanded(child: Text("keys")),
               Expanded(child: Text("outer wear")),
               Expanded(child: Text("shirt")),
               Expanded(child: Text("pants")),
               Expanded(child: Text("skirt")),
               Expanded(child: Text("miscellaneous")),
             ],
          ),
        ),
        Expanded(
           child: ItemTable(),
         ),

        ],
        ),
        

    ); 
        
        
=======
       body: Center(
         child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         
            children: <Widget>[
              Padding(
               padding: const EdgeInsets.all(20.0),
               child: TextField(
                controller: fieldText,
                 decoration: InputDecoration(
                   contentPadding: const EdgeInsets.symmetric(
                     vertical: 15.0
                   ),
                   fillColor: Colors.white,
                   filled: true,
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30.0),
                     borderSide: const BorderSide(width: 0.8)
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30.0),
                     borderSide: BorderSide(width: 0.8, color: Theme.of(context).backgroundColor)
                   ),
                  
                   hintText: "Search for a lost item",
                 prefixIcon: const Icon(Icons.search, size: 30,),
                suffixIcon: IconButton(icon: const Icon(Icons.clear), onPressed: (){
                   fieldText.clear();
                 })
               ),
               ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8.0),
                 scrollDirection: Axis.horizontal,
                 children: const [
                   Text('type'),
               ],
               ),
         ),
              
              Expanded(
                 child: SearchInformation(),
              ),
            ],
          ),
        ),
                
              
            //  Column(
              //  children: <Widget>[
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
              //  ],
             );

    //      ],
    //    ),
      
    // );
>>>>>>> Stashed changes
    
  }
}