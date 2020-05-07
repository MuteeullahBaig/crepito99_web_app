import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crepito99_web_app/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var value = 'New';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Firestore _firestore = Firestore.instance;
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
  var meraPiyaraData;

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
    print('hello init');
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
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
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
                            child: FlatButton(
                              padding: EdgeInsets.all(0.5),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => products()));
                              },
                              child: Text(
                                'Products',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                          flex: 80,
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
                        StreamBuilder<QuerySnapshot>(
                          stream: _firestore.collection('orders').snapshots(),
                          builder: (context, snapshot) {
                            final data = snapshot.data.documents;
                            List<DataRow> meriPyariRow;
//                            for (var items in data) {
////                              print(items.data['NoOfItems']);
//                              final NoOfItems =
//                                  items.data['NoOfItems'].toString();
//                              final itemList = items.data['itemList'][0];
//                              print('itemList');
//                              print(itemList);
//                              final itemPrices =
//                                  items.data['itemPrices'][0].toString();
//                              final itemQty =
//                                  items.data['itemQty'][0].toString();
//
//                              final rowobj = _rowMakerState();
//                              final row = rowobj.getMeriPiyariRow(
//                                  NoOfItems: NoOfItems,
//                                  itemList: itemList,
//                                  itemPrices: itemPrices,
//                                  itemQty: itemQty);
//                              print('itemQty');
//                              print(row);
//                              meriPyariRow.add(row);
//                            }
                            //my implementation
                            DataTable meraPiyaraTable = DataTable(columns: [
                              DataColumn(
                                label: Text(
                                  'NoOfItems',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemList',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemPrices',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemQty',
                                ),
                              ),
                            ], rows: []);
                            for (var RowValue in data) {
                              meraPiyaraTable.rows.add(DataRow(
                                cells: [
                                  DataCell(
                                    Text(
                                      RowValue.data['NoOfItems'].toString(),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      RowValue.data['itemList'][0],
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      RowValue.data['itemPrices'][0].toString(),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      RowValue.data['itemQty'][0].toString(),
                                    ),
                                  ),
                                ],
                              ));
                            }
                            return (meraPiyaraTable);
                          },
                        ),
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
