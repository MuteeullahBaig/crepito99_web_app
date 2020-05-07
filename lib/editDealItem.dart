import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sideBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class editDealItem extends StatefulWidget {
  String id;
  editDealItem(this.id);
//  print(categoryName);
  @override
  _editDealItemState createState() => _editDealItemState();
}

class _editDealItemState extends State<editDealItem> {
  @override
  void initState() {
    print('hello');
    _placeData();
    super.initState();
  }

  var nameController = TextEditingController();
  var priceController = TextEditingController();
  var detailsController = TextEditingController();
  var data;
  String name;
  String price;
  String details;

  _placeData() async {
    data = await Firestore.instance
        .collection('deals')
        .document(widget.id)
        .get();
    print(data['name']);
    nameController.text = data['name'];
    name=data['name'];
    priceController.text = data['price'].toString();
    price=data['price'].toString();
    detailsController.text = data['details'].toString();
    details=data['details'].toString();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: <Widget>[
            SideBar(),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 35,
                      height: 35,
                      child: FloatingActionButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        backgroundColor: Colors.red,
                        child: Icon(

                          Icons.arrow_back,
                          size: 12.0,

                        ),),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
//                  ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: nameController,
                        onChanged: (value){
                          name=value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Price',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
//                  ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: priceController,
                        onChanged: (value){
                          price=value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Loyalty Points',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
//                  ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        controller: detailsController,
                        onChanged: (value){
                          details=value;
                        },
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(15.0),
                        child: RaisedButton(
                          onPressed: () async{
                            final CollectionReference profile_Collection =
                            Firestore.instance.collection('deals');
                            await profile_Collection.document(widget.id).updateData({
                              'name': name,
                              'price': int.parse(price),
                              'details' : details,
                            });
                          },
                          elevation: 5.0,

                          padding: EdgeInsets.all(15.0),
                          color: Colors.white30,
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Color(0xFFDB2C27),
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'OpenSans'),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
