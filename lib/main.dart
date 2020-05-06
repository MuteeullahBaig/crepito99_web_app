//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var value = 'New';

//class statefulDataTable extends StatefulWidget {
//  List<String> rows;
//  List<String> col;
//  statefulDataTable({this.rows, this.col});
//
//  @override
//  _statefulDataTableState createState() => _statefulDataTableState();
//}
//
//class _statefulDataTableState extends State<statefulDataTable> {
////  var value;
//
//  List<String> rows;
//  List<String> col;
//  _statefulDataTableState({this.rows, this.col});
//
//  var dataTable;
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    this.col = [
//      'Order No.',
//      'Order Details',
//      'Customer Name',
//      'Customer Contact',
//      'Total'
//    ];
//
//    this.rows = [
//      '1',
//      '1 Long Ranger',
//      'Babbu bhai',
//      '090078601',
//      '450 PKR/-',
//    ];
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    dataTable = DataTable(columns: [
//      DataColumn(
//        label: Text(col[0]),
//      ),
//      DataColumn(
//        label: Text(col[1]),
//      ),
//      DataColumn(
//        label: Text(col[2]),
//      ),
//      DataColumn(
//        label: Text(col[3]),
//      ),
//      DataColumn(
//        label: Text(col[4]),
//      ),
//    ], rows: [
//      DataRow(
//        cells: [
//          DataCell(
//            Text(rows[0]),
//          ),
//          DataCell(
//            Text(rows[1]),
//          ),
//          DataCell(
//            Text(rows[2]),
//          ),
//          DataCell(
//            Text(rows[3]),
//          ),
//          DataCell(
//            Text(rows[4]),
//          ),
//        ],
//      ),
//    ]);
//
//    return dataTable;
//  }
//}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

//  Firestore _firestore = Firestore.instance;
  var table = DataTable(columns: [
    DataColumn(
      label: Text(
        'Order No.',
      ),
    ),
    DataColumn(
      label: Text('Order Details'),
    ),
    DataColumn(
      label: Text('Customer Name'),
    ),
    DataColumn(
      label: Text('Customer Contact'),
    ),
    DataColumn(
      label: Text('Total'),
    ),
  ], rows: [
    DataRow(
      cells: [
        DataCell(
          Text('1'),
        ),
        DataCell(
          Text('1 Long Ranger'),
        ),
        DataCell(
          Text('Babbu bhai'),
        ),
        DataCell(
          Text('090078601'),
        ),
        DataCell(
          Text('450 PKR/-'),
        ),
      ],
    ),
  ]);
  var updateTable;

  List<String> col = [
    'Order No.',
    'Order Details',
    'Customer Name',
    'Customer Contact',
    'Total'
  ];

  List<String> rows = [
    '1',
    '1 Long Ranger',
    'Babbu bhai',
    '090078601',
    '450 PKR/-',
  ];

  @override
  void initState() {
    super.initState();

//    table = statefulDataTable(rows:[],[]);
    updateTable = (value) {
      setState(() {
        if (value == 'New') {
          table = DataTable(columns: [
            DataColumn(
              label: Text(col[0]),
            ),
            DataColumn(
              label: Text(col[1]),
            ),
            DataColumn(
              label: Text(col[2]),
            ),
            DataColumn(
              label: Text(col[3]),
            ),
            DataColumn(
              label: Text(col[4]),
            ),
          ], rows: [
            DataRow(
              cells: [
                DataCell(
                  Text(rows[0]),
                ),
                DataCell(
                  Text(rows[1]),
                ),
                DataCell(
                  Text(rows[2]),
                ),
                DataCell(
                  Text(rows[3]),
                ),
                DataCell(
                  Text(rows[4]),
                ),
              ],
            ),
          ]);
        }
      });
    };

//    StreamBuilder<QuerySnapshot>(
//        stream: _firestore.collection('Sandwiches').snapshots(),
//        builder: (context, snapshot) {
//          final data = snapshot.data.documents;
//        });
  }

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
                          flex: 4,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Card(
                                  child: Expanded(
                                child: Container(
                                  width: 200,
                                  height: 100,
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text("Total Orders"),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                        subtitle: Text("27"),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                              Card(
                                child: Expanded(
                                  child: Container(
                                    width: 200,
                                    height: 100,
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          title: Text("Total Sales"),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          subtitle: Text("16420 PKR"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                child: Expanded(
                                  child: Container(
                                    width: 200,
                                    height: 100,
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          title: Text("Orders Cancelled"),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 16.0),
                                          subtitle: Text("2"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 40,
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 5,
                    ),
                    Row(
                      children: <Widget>[
                        Spacer(
                          flex: 2,
                        ),
                        Text(
                          'Orders',
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
                    Row(
                      children: <Widget>[
                        Spacer(
                          flex: 3,
                        ),
                        RaisedButton(
                          onPressed: () {
                            print('New Button Pressed');
                            setState(() {
                              table = DataTable(columns: [
                                DataColumn(
                                  label: Text(col[0]),
                                ),
                                DataColumn(
                                  label: Text(col[1]),
                                ),
                                DataColumn(
                                  label: Text(col[2]),
                                ),
                                DataColumn(
                                  label: Text(col[3]),
                                ),
                                DataColumn(
                                  label: Text(col[4]),
                                ),
                              ], rows: [
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(rows[0]),
                                    ),
                                    DataCell(
                                      Text(rows[1]),
                                    ),
                                    DataCell(
                                      Text(rows[2]),
                                    ),
                                    DataCell(
                                      Text(rows[3]),
                                    ),
                                    DataCell(
                                      Text(rows[4]),
                                    ),
                                  ],
                                ),
                              ]);
                            });
//                            updateTable('New');
                          },
                          child: const Text(
                            'New',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        RaisedButton(
                          onPressed: () {
                            print('Placed Button Pressed');
                            setState(() {
                              table = DataTable(columns: [
                                DataColumn(
                                  label: Text(col[0]),
                                ),
                                DataColumn(
                                  label: Text(col[1]),
                                ),
                                DataColumn(
                                  label: Text(col[2]),
                                ),
                                DataColumn(
                                  label: Text(col[3]),
                                ),
                                DataColumn(
                                  label: Text(col[4]),
                                ),
                              ], rows: [
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(rows[2]),
                                    ),
                                    DataCell(
                                      Text(rows[0]),
                                    ),
                                    DataCell(
                                      Text(rows[1]),
                                    ),
                                    DataCell(
                                      Text(rows[4]),
                                    ),
                                    DataCell(
                                      Text(rows[3]),
                                    ),
                                  ],
                                ),
                              ]);
                            });
                          },
                          child: const Text(
                            'Placed',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: const Text(
                            'Dispatched',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: const Text(
                            'Completed',
                            style: TextStyle(fontSize: 16),
                          ),
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
                          flex: 4,
                        ),
                        table,
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
