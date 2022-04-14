import 'package:flutter/widgets.dart';
import 'package:foundit/widgets/items.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchInformation extends StatefulWidget {
  @override
  _SearchInformationState createState() => _SearchInformationState();
}
class _SearchInformationState extends State<SearchInformation> {
  final Stream<QuerySnapshot> _itemsStream = FirebaseFirestore.instance.collection('items').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _itemsStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['name']),
              subtitle: Text(data['type']),
            );
          }).toList(),
        );
      },
    );
  }
}