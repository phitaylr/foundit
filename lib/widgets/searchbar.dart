import 'package:flutter/widgets.dart';
import 'package:foundit/widgets/items.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchInformation extends StatefulWidget {
  @override
  _SearchInformationState createState() => _SearchInformationState();
}
class _SearchInformationState extends State<SearchInformation> {
  final Stream<QuerySnapshot> _typeStream = FirebaseFirestore.instance.collection('items').snapshots();
    //late DocumentSnapshot document;
    // DocumentSnapshot document = _typeStream as DocumentSnapshot<Object?>;
   // Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
  //  Map<String, dynamic> data = document as Map<String, dynamic>;
  //           late List <String> types;
  //           // ignore: unused_local_variable
            // for (QuerySnapshot snap in _typeStream ){
              
            // }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _typeStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            return ListTile(
              title: Text('text'),
            );
          }).toList(),
        );
      },
    );
  }
}
