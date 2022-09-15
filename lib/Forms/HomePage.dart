import 'package:aung_myo_khant_assignment/Calculation/Calculate.dart';
import 'package:aung_myo_khant_assignment/Calculation/DeCounter.dart';
import 'package:aung_myo_khant_assignment/Calculation/SalaryCalculate.dart';
import 'package:aung_myo_khant_assignment/Calculation/emSearch.dart';
import 'package:aung_myo_khant_assignment/Outputs/Doutput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo).copyWith(secondary: Colors.blueGrey),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text('Welcome!'),
        ),
         body: myHome()),
    );
  }
}

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ListView(
          children: [
            Container(
              height: 100,
              width: 50,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Material(
                elevation: 18,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                      // padding: MaterialStateProperty.all( EdgeInsets.all(20)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return RegD();
                      }));
                    },
                    child: Text('Add New Employee')),
              ),

            ),
            Container(
              height: 100,
              width: 50,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Material(
                elevation: 18,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                      // padding: MaterialStateProperty.all( EdgeInsets.all(20)),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return Search();
                      }));
                    },
                    child: Text('Search Employee')),
              ),

            ),
            Container(
                height: 100,
                width: 50,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Material(
                  elevation: 18,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                    ), onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    {
                      return Doutput();
                    }));
                  },
                    child: Text('Retrieve Info'),
                  ),
                )

            ),
            Container(
                height: 100,
                width: 50,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Material(
                  elevation: 18,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      return CalculateSalary();
                    }));
                  },
                    child: Text('Calculate Salary'),
                  ),
                )

            ),
            Container(
                height: 100,
                width: 50,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Material(
                  elevation: 18,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo[900]),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    {
                      return employeeCalculation();
                    }));
                  },
                    child: Text('Display employee of all departments'),
                  ),
                )

            ),

          ],
        ),
      ),
    );
  }
}











