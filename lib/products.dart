import 'package:flutter/material.dart';
import 'package:crepito99_web_app/sideBar.dart';
import 'package:crepito99_web_app/deals.dart';
import 'package:crepito99_web_app/menu.dart';

class products extends StatefulWidget {
  @override
  _productsState createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: productsHome(),
    );
  }
}


class productsHome extends StatefulWidget {
  @override
  _productsHomeState createState() => _productsHomeState();
}

class _productsHomeState extends State<productsHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
        SideBar(),
        Expanded(
          flex: 6,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                RaisedButton(
                  onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => deals()));
                  },
                  elevation: 5.0,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white30,
                  child: Text(
                    'Deals',
                    style: TextStyle(
                        color: Color(0xFFDB2C27),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans'),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                RaisedButton(
                  onPressed: (){
                      Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) => menu()));
    },

                  elevation: 5.0,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.white30,
                  child: Text(
                    'Menu',
                    style: TextStyle(
                        color: Color(0xFFDB2C27),
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'OpenSans'),
                  ),
                ),
              ],
            ),
          )
        )
      ]),
    );
  }
}
