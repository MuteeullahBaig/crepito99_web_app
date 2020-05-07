import 'package:crepito99_web_app/addNewDealItem.dart';
import 'package:crepito99_web_app/addNewItem.dart';
import 'package:crepito99_web_app/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crepito99_web_app/sideBar.dart';
import 'package:crepito99_web_app/menuItem.dart';
import 'package:crepito99_web_app/menu.dart';
import 'dealItem.dart';
import 'addNewDealItem.dart';

class deals extends StatefulWidget {

//  String menuCategory;
//  deals(this.menuCategory);
  @override
  _dealsState createState() => _dealsState();
}

class _dealsState extends State<deals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: dealsHome()
    );
  }
}


class dealsHome extends StatefulWidget {
//  String menuCategory;
//  dealsHome(this.menuCategory);
  @override
  _dealsHomeState createState() => _dealsHomeState();
}

class _dealsHomeState extends State<dealsHome> {
  @override
  initState(){
    super.initState();
    i=0;
  }
  int i;
  var id;
  Firestore _firestore = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    i=0;
    return Scaffold(
      body: Row(
        children: <Widget>[
          SideBar(),
          Expanded(
            flex: 6,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 35,
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => products()));
                      },
                      backgroundColor: Colors.red,
                      child: Icon(

                        Icons.arrow_back,
                        size: 12.0,

                      ),
                    ),
                  ),
                  Container(
//                    height: 50,
                    child: Text(
                      'Deals',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),
                    ),
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: _firestore.collection('deals').snapshots(),
                    builder: (context, snapshot) {
                      final data = snapshot.data.documents;
                      List<CardViewer> cardWidgets = [];
                      for (var items in data) {
                        i++;
//                        print(items.data['name']);

                        final name = items.data['name'];
                        final details = items.data['details'].toString();
                        final price= items.data['price'].toString();
//                        final loyaltyPoints =
//                        items.data['loyaltyPoints'].toString();
//                        final id= i.toString();
                        id= items.documentID;
                        final card = CardViewer(
                          name: name,
                          details: details,
                          price:price,
//                          loyaltyPoint: loyaltyPoints,
                          id: id,
//                          menuCategory: widget.menuCategory,
                        );
                        cardWidgets.add(card);
                      }
                      return Expanded(
                        child: ListView(
                          children: cardWidgets,
                        ),
                      );
                    },
                  ),

                  RaisedButton(
                    onPressed: () {
                      print(i);
                      id=int.parse(id);
                      id=id+1;


                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => addNewDealItem(id.toString())));


                    },

                    elevation: 5.0,

                    padding: EdgeInsets.all(15.0),
                    color: Colors.white30,
                    child: Text(
                      'Add New Item',
                      style: TextStyle(
                          color: Color(0xFFDB2C27),
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'OpenSans'),
                    ),
                  ),]),
          ),],),
    );

  }
}

class CardViewer extends StatelessWidget {
  @override
  final String name;
  final String details;
  final String price;
//  final String loyaltyPoint;
  final String id;
//  final String menuCategory;
  CardViewer({this.name, this.details, this.price,this.id,});
  Widget build(BuildContext context) {
    return Card(
        child: deal_item(
          name: name,
          detail: details,
          dealsPrices: price,

//          itemLP: loyaltyPoint + ' LP',
//          collectionName: menuCategory,
          id: id,
        ));
  }
}