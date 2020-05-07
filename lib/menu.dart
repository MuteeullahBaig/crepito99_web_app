import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crepito99_web_app/sideBar.dart';
import 'MenuCategory.dart';
import 'products.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menuHome()
    );
  }
}


class menuHome extends StatefulWidget {
  @override
  _menuHomeState createState() => _menuHomeState();
}

class _menuHomeState extends State<menuHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: <Widget>[
            SideBar(),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children:<Widget>[
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
                        SizedBox(
                          height: 30.0,
                        ),
                      ]
                    ),
                    Button(name: 'Shawarmas',
                       onpressed: (){
                         Navigator.of(context)
                             .push(MaterialPageRoute(builder: (context) => MenuCategory('Shawarmas')));
                       },
                    ),
                    Button(name: 'Burgers',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Burgers')));
                      },),
                    Button(name: 'Wraps',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Wraps')));
                      },),
                    Button(name: 'Sandwiches',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Sandwiches')));
                      },),
                    Button(name: 'Ice-cream Shakes',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Ice-cream Shakes')));
                      },),
                    Button(name: 'Blizzards',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Blizzards')));
                      },),
                    Button(name: 'Beverages',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Beverages')));
                      },),
                    Button(name: 'Specials',
                      onpressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => MenuCategory('Specials')));
                      },),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  }
}

class Button extends StatelessWidget {
  String name;
  Function onpressed;
  Button({this.name, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
        onPressed: () {
          onpressed();
        },
        elevation: 5.0,

        padding: EdgeInsets.all(15.0),
//        shape:
//            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        color: Colors.white30,
        child: Text(
          name,
          style: TextStyle(
              color: Color(0xFFDB2C27),
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }
}
