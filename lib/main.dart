import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Image.asset('images/logo-01.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'Products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Spacer(
                      flex: 1,
                    ),
                    Row(
//                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Spacer(
                          flex: 50,
                        ),
                        Icon(
                          Icons.chat_bubble,
                          color: Colors.grey,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Text('Administrator'),
                        Spacer(
                          flex: 4,
                        ),
                      ],
                    ),
                    Divider(),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          'Overview',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(
                          flex: 40,
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: <Widget>[
                        Spacer(
                          flex: 2,
                        ),
//                        Container(
//                          child: cardChild,
//                          margin: EdgeInsets.all(15.0),
//                          decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(10.0),
//                          ),
//                        ),
                        Spacer(
                          flex: 40,
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 50,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
