import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}