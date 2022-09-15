import 'dart:ui';
import 'package:aung_myo_khant_assignment/Forms/HomePage.dart';
import 'package:flutter/material.dart';
import 'MyDataAccess.dart';


class CalculateSalary extends StatelessWidget {
  const CalculateSalary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: 'Times New Roman',
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.indigo).copyWith(secondary: Colors.deepPurple),

        ),
        home: calculateSalary()
    );
  }
}
enum var1 { T, F }
enum var2 { T, F }
class calculateSalary extends StatefulWidget {
  const calculateSalary({Key? key}) : super(key: key);

  get position => null;

  @override
  State<calculateSalary> createState() => _calculateSalaryState();
}

class _calculateSalaryState extends State<calculateSalary> {
  var1? _val_l = var1.T;
  var2? _val_2 = var2.T;
  TextEditingController syearcontroller = new TextEditingController();

  String name='';
  String ans = '';
  int syear = 0;
  String position = '';
  int salary =0;

  bool res = false;

  bool leave = true;
  bool late = true;

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            iconSize: 30.0,
            onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              });
            },
          ),
          title: Center(child: Text('Salary Calculation')),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: TextField(
                      onChanged: (value){
                        name = value;
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        fillColor: Colors.white38,
                        filled: true,
                        labelText: 'User Name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: TextField(
                      onChanged: (value){
                        position = value;
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        fillColor: Colors.white38,
                        filled: true,
                        labelText: 'Job Position',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Material(
                      elevation: 18,
                      shadowColor: Colors.grey,
                      child: TextField(
                        onChanged: (value) {
                          syear = int.parse(value);
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          fillColor: Colors.white38,
                          filled: true,
                          labelText: 'Enter Service Year',
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  child: Column(
                    children: [
                      Material(
                        elevation: 18,
                        shadowColor: Colors.grey,
                        child: Theme(
                          data: ThemeData.dark(),
                          child: ListTile(
                            title: const Text('Not Leave',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),),
                            leading: Radio<var1>(
                              value: var1.T,
                              groupValue: _val_l,
                              onChanged: (var1? value) {
                                setState(() {
                                  _val_l = value;
                                  leave = false;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 18,
                        shadowColor: Colors.grey,
                        child: Theme(
                          data: ThemeData.dark(),
                          child: ListTile(
                            title: const Text('Leave',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),),
                            leading: Radio<var1>(
                              value: var1.F,
                              groupValue: _val_l,
                              onChanged: (var1? value) {
                                setState(() {
                                  _val_l = value;
                                  leave = true;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                    child: Column(
                      children: [
                        Material(
                          elevation: 18,
                          shadowColor: Colors.grey,
                          child: Theme(
                            data: ThemeData.dark(),
                            child: ListTile(
                              title: const Text('Not Late',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                              leading: Radio<var2>(
                                value: var2.T,
                                groupValue: _val_2,
                                onChanged: (var2? value) {
                                  setState(() {
                                    _val_2 = value;
                                    late = false;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 18,
                          shadowColor: Colors.grey,
                          child: Theme(
                            data: ThemeData.dark(),
                            child: ListTile(
                              title: const Text('Late',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                              leading: Radio<var2>(
                                value: var2.F,
                                groupValue: _val_2,
                                onChanged: (var2? value) {
                                  setState(() {
                                    _val_2 = value;
                                    late = true;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                Container(
                  alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                          height: 60,
                        ),
                        Text((result != 0)?'Salary : $result':'',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lucida Console',
                              fontSize: 20,
                              color: Colors.deepPurple,
                            )
                        ),
                      ],
                    )
                )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                            onPressed: (){
                              MyDataAccess M= MyDataAccess();
                              pFactory f= pFactory();
                              Employee e = f.pFactoryDemo(position , name);
                              setState(() {
                              result = e.Fsalary( salary , leave , syear ,late);
                              });
                            },
                            child: Text('Calculate Salary',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
                        ),

              ],
            )));
  }
}




