import 'package:flutter/material.dart';
import 'package:crepito99_web_app/editMenuItem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class menuItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemLP;
  final String collectionName;
  final String id;
  Firestore _firestore=Firestore.instance;
  menuItem(
      {@required this.itemName,
        @required this.itemPrice,
        @required this.itemLP,
      @required this.collectionName,
      @required this.id});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.all(10.0),
        leading: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.local_offer,
              color: Colors.red,
            ),
            Text(itemLP),
          ],
        ),
        title: Text(itemName),
        trailing: Wrap(
          alignment: WrapAlignment.start,
          children: <Widget>[
            Text(itemPrice),
            SizedBox(
              width: 30.0,
            ),
            InkWell(

              child: Icon(Icons.edit,
                color: Colors.red,),
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => editMenuItem(collectionName,id)));
              },

//
            ),
            InkWell(

              child: Icon(Icons.delete,
                color: Colors.red,),
              onTap: (){
                print(id);
                _firestore.collection(collectionName).document(id).delete();
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (context) => editMenuItem(collectionName,id)));
              },

//
            ),
          ],
        ));
  }
}