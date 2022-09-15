import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DeCounter.dart';
import 'MyDataAccess.dart';



class employeeCalculation extends StatelessWidget {
  const employeeCalculation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
            fontFamily: 'Times New Roman',
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.indigo).copyWith(secondary: Colors.deepPurple),
            ),

        home: Scaffold(
            appBar: AppBar(
                title: Text('Processing your request...'),
              automaticallyImplyLeading: false,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),

            ),

            body: showinfo()));
  }
}

class showinfo extends StatefulWidget {
  const showinfo({Key? key}) : super(key: key);

  @override
  State<showinfo> createState() => _showinfoState();
}

class _showinfoState extends State<showinfo> {
  int hrcount=0;
  int academiccount=0;
  int financecount=0;
  int marketingcount=0;

  void Dcount(){
    MyDataAccess em=MyDataAccess();

    hrcount=em.hcount();
    print(hrcount);

    academiccount=em.acount();
    print(academiccount);

    financecount=em.fcount();
    print(financecount);

    marketingcount=em.mcount();
    print(marketingcount);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.indigo,
          child: ElevatedButton(
            child: const Text('Proceed to next page!'),
            onPressed: () {

              Dcount();
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return deCounter(hrcount,academiccount,financecount,marketingcount);
              }));
            },
      )

          ),
    );
  }
}
