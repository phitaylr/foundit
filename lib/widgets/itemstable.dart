import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ItemTable extends StatefulWidget {


  @override
  _ItemTableState createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
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

        // return ListView(
        //   children: snapshot.data!.docs.map((DocumentSnapshot document) {
        //     Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
        //     return ListTile(
        //       title: Text(data['name']),
        //       subtitle: Text(data['type']),
        //     );
        //   }).toList(),
        // );
           List<DataRow> lostitems = snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return (
              DataRow(
              cells:
              [
                DataCell(Text(data['name'])),
                DataCell(Text(data['location'])),
                DataCell(Text(data['type'])),
              ]
              )
            );
          }).toList();
          

        return DataTable(
          rows: lostitems,
          
          columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Type")),
            DataColumn(label: Text("Location")),
            //DataColumn(label: Text("Description")),
          ],
          // rows: [
          //   snapshot.data!.docs.map((DocumentSnapshot document) {
          //   Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
          //   return DataRow(
          //     cells:[
          //     DataCell(Text(data['type'])),
          //     DataCell(Text(data['type'])),
          //     DataCell(Text(data['location'])),
          //     ],
               
          //   );
          // }).toList(),
            // DataRow(cells: [
            //   DataCell(Text("1")),
            //   DataCell(Text("2")),
            //   DataCell(Text("3")),
            
            // ])
            // ]
        );
      },
    );
  }
}
