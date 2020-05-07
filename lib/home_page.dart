import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sideBar.dart';

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

  DataTable table = DataTable(columns: [
    DataColumn(
      label: Text(
        'Order ID.',
      ),
    ),
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
        'itemQty',
      ),
    ),
    DataColumn(
      label: Text(
        'itemPrices',
      ),
    ),
    DataColumn(
      label: Text(
        'totalBill',
      ),
    ),
    DataColumn(
      label: Text(
        'Status',
      ),
    ),
  ], rows: []);
  DataTable meraPiyaraTable0 = DataTable(columns: [
    DataColumn(
      label: Text(
        'Order ID.',
      ),
    ),
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
        'itemQty',
      ),
    ),
    DataColumn(
      label: Text(
        'itemPrices',
      ),
    ),
    DataColumn(
      label: Text(
        'totalBill',
      ),
    ),
    DataColumn(
      label: Text(
        'Status',
      ),
    ),
  ], rows: []);
  DataTable meraPiyaraTable1 = DataTable(columns: [
    DataColumn(
      label: Text(
        'Order ID.',
      ),
    ),
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
        'itemQty',
      ),
    ),
    DataColumn(
      label: Text(
        'itemPrices',
      ),
    ),
    DataColumn(
      label: Text(
        'totalBill',
      ),
    ),
    DataColumn(
      label: Text(
        'Status',
      ),
    ),
  ], rows: []);
  DataTable meraPiyaraTable2 = DataTable(columns: [
    DataColumn(
      label: Text(
        'Order ID.',
      ),
    ),
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
        'itemQty',
      ),
    ),
    DataColumn(
      label: Text(
        'itemPrices',
      ),
    ),
    DataColumn(
      label: Text(
        'totalBill',
      ),
    ),
    DataColumn(
      label: Text(
        'Status',
      ),
    ),
  ], rows: []);
  DataTable meraPiyaraTable3 = DataTable(columns: [
    DataColumn(
      label: Text(
        'Order ID.',
      ),
    ),
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
        'itemQty',
      ),
    ),
    DataColumn(
      label: Text(
        'itemPrices',
      ),
    ),
    DataColumn(
      label: Text(
        'totalBill',
      ),
    ),
    DataColumn(
      label: Text(
        'Status',
      ),
    ),
  ], rows: []);

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

  DataTable meraPiyaraFunction(
    int status,
    DataTable meraPiyaraTable0,
    DataTable meraPiyaraTable1,
    DataTable meraPiyaraTable2,
    DataTable meraPiyaraTable3,
  ) {
    if (status == 0) {
      return meraPiyaraTable0;
    } else if (status == 1) {
      return meraPiyaraTable0;
    } else if (status == 2) {
      return meraPiyaraTable0;
    } else if (status == 3) {
      return meraPiyaraTable0;
    }
  }

  @override
  void initState() {
    super.initState();
    print('hello init');
  }

  @override
  Widget build(BuildContext context) {
    int statusSelected = 0;

    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: <Widget>[
            SideBar(),
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
                        Card(
                            child: Expanded(
                          child: Container(
                            width: 200,
                            height: 100,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text("Total Orders"),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    subtitle: Text("2"),
                                  )
                                ],
                              ),
                            ),
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
                              statusSelected = 0;
                              this.table = this.meraPiyaraTable0;
                              print('statusSelected');
                              print(statusSelected);
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
                              statusSelected = 1;
                              this.table = this.meraPiyaraTable1;
                              print('statusSelected');
                              print(statusSelected);
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
                          onPressed: () {
                            print('Dispatched Button Pressed');
                            setState(() {
                              statusSelected = 2;
                              this.table = this.meraPiyaraTable2;
                              print('statusSelected');
                              print(statusSelected);
                            });
                          },
                          child: const Text(
                            'Dispatched',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        RaisedButton(
                          onPressed: () {
                            print('Completed Button Pressed');
                            setState(() {
                              statusSelected = 3;
                              this.table = this.meraPiyaraTable3;
                              print('statusSelected');
                              print(statusSelected);
                            });
                          },
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

                            meraPiyaraTable0 = DataTable(columns: [
                              DataColumn(
                                label: Text(
                                  'Order ID.',
                                ),
                              ),
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
                                  'itemQty',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemPrices',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'totalBill',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Status',
                                ),
                              ),
                            ], rows: []);
                            meraPiyaraTable1 = DataTable(columns: [
                              DataColumn(
                                label: Text(
                                  'Order ID.',
                                ),
                              ),
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
                                  'itemQty',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemPrices',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'totalBill',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Status',
                                ),
                              ),
                            ], rows: []);
                            meraPiyaraTable2 = DataTable(columns: [
                              DataColumn(
                                label: Text(
                                  'Order ID.',
                                ),
                              ),
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
                                  'itemQty',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemPrices',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'totalBill',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Status',
                                ),
                              ),
                            ], rows: []);
                            meraPiyaraTable3 = DataTable(columns: [
                              DataColumn(
                                label: Text(
                                  'Order ID.',
                                ),
                              ),
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
                                  'itemQty',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'itemPrices',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'totalBill',
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Status',
                                ),
                              ),
                            ], rows: []);

                            int OrderID = 1;
                            for (var RowValue in data) {
                              if (RowValue.documentID != 'NoOfOrders' &&
                                  RowValue.data['NoOfItems'] != 0) {
                                if (RowValue.data['status'] == 0) {
                                  this.meraPiyaraTable0.rows.add(DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              RowValue.documentID.toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['NoOfItems']
                                                  .toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['itemList'][0],
                                            ),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemQty'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemPrices'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['totalBill']
                                                .toString()),
                                          ),
                                          DataCell(
                                            MyStatefulWidget(
                                              firestore: _firestore,
                                              documentID: RowValue.documentID,
                                              status: RowValue.data['status'],
                                            ),
                                          ),
                                        ],
                                      ));
                                }
                                if (RowValue.data['status'] == 1) {
                                  this.meraPiyaraTable1.rows.add(DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              RowValue.documentID.toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['NoOfItems']
                                                  .toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['itemList'][0],
                                            ),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemQty'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemPrices'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['totalBill']
                                                .toString()),
                                          ),
                                          DataCell(
                                            MyStatefulWidget(
                                              firestore: _firestore,
                                              documentID: RowValue.documentID,
                                              status: RowValue.data['status'],
                                            ),
                                          ),
                                        ],
                                      ));
                                }
                                if (RowValue.data['status'] == 2) {
                                  this.meraPiyaraTable2.rows.add(DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              RowValue.documentID.toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['NoOfItems']
                                                  .toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['itemList'][0],
                                            ),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemQty'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemPrices'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['totalBill']
                                                .toString()),
                                          ),
                                          DataCell(
                                            MyStatefulWidget(
                                              firestore: _firestore,
                                              documentID: RowValue.documentID,
                                              status: RowValue.data['status'],
                                            ),
                                          ),
                                        ],
                                      ));
                                }
                                if (RowValue.data['status'] == 3) {
                                  this.meraPiyaraTable3.rows.add(DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              RowValue.documentID.toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['NoOfItems']
                                                  .toString(),
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              RowValue.data['itemList'][0],
                                            ),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemQty'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['itemPrices'][0]
                                                .toString()),
                                          ),
                                          DataCell(
                                            Text(RowValue.data['totalBill']
                                                .toString()),
                                          ),
                                          DataCell(
                                            MyStatefulWidget(
                                              firestore: _firestore,
                                              documentID: RowValue.documentID,
                                              status: RowValue.data['status'],
                                            ),
                                          ),
                                        ],
                                      ));
                                }
                              }
                              OrderID++;
                            }
//                            this.table = meraPiyaraFunction(
//                                statusSelected,
//                                meraPiyaraTable0,
//                                meraPiyaraTable1,
//                                meraPiyaraTable2,
//                                meraPiyaraTable3);

                            return this.table;
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

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key, this.firestore, this.documentID, this.status})
      : super(key: key);

  Firestore firestore;
  var documentID;
  int status;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '';

  void updateData(int newStatus) {
    try {
      widget.firestore
          .collection('orders')
          .document(widget.documentID)
          .updateData({'status': newStatus});
    } catch (e) {
      print(e.toString());
    }
  }

  int getIntStatus(String value) {
    if (value == 'New')
      return 0;
    else if (value == 'Placed')
      return 1;
    else if (value == 'Dispatched')
      return 2;
    else if (value == 'Completed') return 3;
  }

  String getStrStatus(int value) {
    if (value == 0)
      return 'New';
    else if (value == 1)
      return 'Placed';
    else if (value == 2)
      return 'Dispatched';
    else if (value == 3) return 'Completed';
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      this.dropdownValue = getStrStatus(widget.status);
    });
    print('dropdownValue');
    print(dropdownValue);
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.red),
      underline: Container(
        height: 2,
        color: Colors.black,
      ),
      onChanged: (String newValue) {
        setState(() {
          updateData(getIntStatus(newValue));
          dropdownValue = newValue;
        });
      },
      items: <String>['New', 'Placed', 'Dispatched', 'Completed']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
