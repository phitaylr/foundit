
import 'dart:async';
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
        title: Text(widget.title),
      ),
      drawer: SideBarMenu(),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ItemInformation(),
            )
          ],
        ),
      ),
    );
  }
}
