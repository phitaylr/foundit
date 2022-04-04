// left align a back button if current .dart isn't homescreen
//log out button if currently logged in
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:foundit/widgets/items.dart';
import 'package:foundit/widgets/mainmenu.dart';
import 'package:flutter/material.dart';


class FoundItHomePage extends StatefulWidget {
  const FoundItHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<FoundItHomePage> createState() => _FoundItHomePageState();
}

class _FoundItHomePageState extends State<FoundItHomePage> {


  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Found It!'),
        leadingWidth:100,
        leading: Row(
          children: <Widget>[
                      IconButton(
             icon:const Icon(Icons.add),
             tooltip: 'Add a lost item',
             onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This will eventually go to the new item page')));
                },
            ),
              IconButton(
                icon: const Icon(Icons.grid_3x3_outlined),
                tooltip: 'Spreadsheet of items',
               onPressed: () {
                 ScaffoldMessenger.of(context).showSnackBar(
                   const SnackBar(content: Text('This will eventually go to the grid page')));
                },
            ),
          ]
        ),
        actions: <Widget>[
              IconButton(
              icon:const Icon(Icons.search),
            tooltip: 'Search for a lost item',
              onPressed: (){
              Navigator.pop(context);
                Navigator.pushNamed(context, '/search');
               },
            ),
            IconButton(
              icon: const Icon(Icons.login),
              tooltip: 'Log in to add new items and see existing items',
              onPressed: () {
              Navigator.pop(context);
                Navigator.pushNamed(context, '/admin');
              },
             ),
          ],
          ),
    );
   }
 }

//uncommenting stops here
       //drawer: SideBarMenu(),
       //body: Center(
         //child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
         //   children: <Widget>[
         //      Expanded(
         //        child: ItemInformation(),
        //      )
       //    ],
      //   ),
    //   ),
   //  );
  // }
 //}