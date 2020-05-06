import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crepito99_web_app/home_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

var CashierData;
var AdminData;

void inputData() async {
  CashierData =
      await Firestore.instance.collection('Admin').document('1').get();
  AdminData = await Firestore.instance.collection('Admin').document('2').get();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  initState() {
    inputData();
    super.initState();
  }

  String password;
  String email;
  bool credential_check = false;

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
            keyboardType: TextInputType.text,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xFFDB2C27),
                ),
                hintText: 'Enter Your Password',
                hintStyle: kHintTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            onChanged: (value) {
              email = value;
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xFFDB2C27),
                ),
                hintText: 'Enter Your Email Address',
                hintStyle: kHintTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _buildButtonTF() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 175.0,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          if (CashierData['email'] == email) {
            if (CashierData['password'] == password) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()));
            }
          }
          if (AdminData['email'] == email) {
            if (AdminData['password'] == password) {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()));
            }
          } else {
            setState(() {
              credential_check = true;
            });
          }
          print("Login Button Pressed");
        },
        padding: EdgeInsets.all(15.0),
        color: Colors.white,
        child: Text(
          'LOGIN',
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

  Widget _TextTF() {
    return Visibility(
        visible: credential_check ? true : false,
        child: Text(
          'Wrong Email Address or Password!',
          style: TextStyle(
              color: Color(0xFFDB2C27),
              letterSpacing: 1.5,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans'),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFFFFFF),
                    Color(0XFFFAFAFA),
                    Color(0XFFF5F5F5),
                    Color(0XFFEEEEEE),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                ),
              ),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 60.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 35.0),
                    _buildPhoneTF(),
                    SizedBox(height: 35.0),
                    _buildPasswordTF(),
                    SizedBox(height: 20.0),
                    _TextTF(),
                    SizedBox(height: 10.0),
                    _buildButtonTF(),
                    SizedBox(height: 75.0),
//                  SizedBox(height: 15.0),
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

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFFFFFFFF),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final kLabelStyle = TextStyle(
  color: Colors.black54,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kHintTextStyle = TextStyle(
  color: Colors.black54,
  fontFamily: 'OpenSans',
);
