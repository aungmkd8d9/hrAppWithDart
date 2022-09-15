import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class deCounter extends StatelessWidget {

  int hrcount;
  int academiccount;
  int financecount;
  int marketingcount;
  deCounter(this. hrcount,this.academiccount,this.financecount,this.marketingcount);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(fontWeight: FontWeight.bold,fontSize:14),
          headline1: TextStyle(fontFamily: 'Calibri',fontWeight: FontWeight.bold,fontSize: 20)
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo).copyWith(secondary: Colors.purpleAccent
        )
      ),
      home:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Displaying Total Employees')),
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: eDetail(hrcount,academiccount,financecount,marketingcount),
      )
    );
  }
}

class eDetail extends StatefulWidget {
  int hcount;
  int acount;
  int fcount;
  int mcount;
  eDetail(this.hcount,this.acount,this.fcount,this.mcount);

  @override
  State<eDetail> createState() => _eDetailState(hcount,acount,fcount,mcount);
}

class _eDetailState extends State<eDetail> {
  int hcount;
  int acount;
  int fcount;
  int mcount;
  _eDetailState(this.hcount,this.acount,this.fcount,this.mcount);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Expanded(
          child: Container(
              width: 500,
              height: 600,
              alignment: Alignment.center,
              child: Material(
                color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DataTable(
                          columns: [
                            DataColumn(
                                label: Text(
                                  'Departments',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                            DataColumn(
                                label: Text(
                                  'Employees',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            )
                          ],

                          rows: [
                            DataRow(
                                cells: [
                                  DataCell(Text('HR')),
                                  DataCell(Text('$hcount'))
                                ]
                            ),
                            DataRow(
                                cells: [
                                  DataCell(Text('Academic')),
                                  DataCell(Text('$acount'))
                                ]
                            ),
                            DataRow(
                                cells: [
                                  DataCell(Text('Finance')),
                                  DataCell(Text('$fcount'))
                                ]
                            ),
                            DataRow(
                                cells: [
                                  DataCell(Text('Marketing')),
                                  DataCell(Text('$mcount'))
                                ]
                            ),
                          ]
                      )
                    ],
                  )
              )),
        ),
      ],

    );
  }
}

