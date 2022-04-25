import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TypeTags extends StatefulWidget {


  @override
  _TypeTagsState createState() => _TypeTagsState();
}

class _TypeTagsState extends State<TypeTags> {
  final Stream<QuerySnapshot> _typesStream = FirebaseFirestore.instance.collection('items').snapshots();
  Map<String, String> typelinks = Map<String, String>();
   List<Text> typetiles = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _typesStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        else if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        else{

        List<dynamic> tnames = snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return (
               data['type']
            );
          }).toSet().toList();
          typetiles = tnames.map((tname) => Text(tname)).toList();
        return ListView(
         children: typetiles,
        //   // onTap: (){
        //   //   filter = typetiles
        //   // }
        );
        }
        
      },
    );
  }
} 
// class TypeFilter extends StatelessWidget {
//    @override
//   Widget build(BuildContext context) {
//      return
     
//       Drawer(
//        child: ListView(
//          padding: EdgeInsets.zero,
//          children: <Widget>[
//            DrawerHeader(
//             child: Text(
//                'Side menu',
//                style: TextStyle(color: Colors.white, fontSize: 25),
//              ),
//              decoration: BoxDecoration(
//                  color: Colors.lightBlue,
//                  image: DecorationImage(
//                     fit: BoxFit.fill,
//                      image: AssetImage('assets/images/cover.jpg'))),
//            ),
//            ListTile(
//              leading: Icon(Icons.input),
//             title: Text('Admin'),
//              onTap: () {
//                Navigator.pop(context);
//               Navigator.pushNamed(context, '/admin');
//              },
//           ),

//          ],
//        ),
//      );
//    }
// }
// class TypeRow extends _TypeTagsState{
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: <Widget>[
//         TypeTags(),
//       ]
//     );
//   }
// }