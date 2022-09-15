import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class viewDetail extends StatelessWidget {
  String name,nrc,gender,department,position,salary,email,phone;
  viewDetail(this.name,this.nrc,this.gender,this.department,this.position,this.salary,this.email,this.phone,);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo).copyWith(secondary: Colors.purpleAccent),
      ),
      home: Scaffold(
          appBar: AppBar(title: Center(child: Text('Employees Detail Info')),
            automaticallyImplyLeading: false,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Material(
              elevation: 18,
              shadowColor: Colors.grey,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  CircleAvatar(
                    radius: 49,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('$name',style: TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 18
                        ),),
                        ListTile(
                            leading: Icon(Icons.person),
                            title: Text('$nrc')),
                        ListTile(
                            leading: Icon(Icons.person),
                            title: Text('$gender')),
                        ListTile(
                            leading: Icon(Icons.person),
                            title: Text('$department')),
                        ListTile(
                            leading: Icon(Icons.person),
                            title: Text('$position')),
                        ListTile(
                            leading: Icon(Icons.monetization_on),
                            title: Text('$salary')),
                        ListTile(
                            leading: Icon(Icons.email),
                            title: Text('$email')),
                        ListTile(
                            leading: Icon(Icons.phone_android),
                            title: Text('$phone')),
                      ],
                    ),
                  )
                ],
              ),
              ),
            ),
          )
      ),
    );
  }
}
