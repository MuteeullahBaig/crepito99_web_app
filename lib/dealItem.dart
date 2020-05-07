import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:crepito99_web_app/editDealItem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class deal_item extends StatelessWidget {
  final String name;
  final String detail;
  final String dealsPrices;
//  final String imagePath;
  final String id;
  Firestore _firestore=Firestore.instance;

  deal_item({@required this.name, @required this.detail,this.dealsPrices,this.id});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      title: Text(name),
      subtitle: Text(detail),
      trailing: Wrap(
        children:<Widget> [
          InkWell(

            child: Icon(Icons.edit,
              color: Colors.red,),
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => editDealItem(id)));
            },
          ),
      InkWell(

        child: Icon(Icons.delete,
          color: Colors.red,),
        onTap: (){
          print(id);
          _firestore.collection('deals').document(id).delete();
        },

          ),
        ],
      )
    );
  }
}
