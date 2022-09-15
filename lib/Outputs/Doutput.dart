import 'package:aung_myo_khant_assignment/Calculation/MyDataAccess.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'viewDetail.dart';



class Doutput extends StatelessWidget {
  const Doutput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo).copyWith(secondary: Colors.purpleAccent),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Employee List'),

          ),
            automaticallyImplyLeading: false,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: mycontainer()
      ),
    );
  }
}


class myOutput extends StatefulWidget {
 // const myOutput({Key? key}) : super(key: key);

  String name;
  String nrc;
  String gender;
  String department;
  String position;
  String salary;
  String email;
  String phone;
  myOutput(this.name,this.nrc,this.gender,this.department,this.position,this.salary,this.email,this.phone);

  @override
  State<myOutput> createState() => _myOutputState(name,nrc,gender,department,position,salary,email,phone);
}

class _myOutputState extends State<myOutput> {
  String name;
  String nrc;
  String gender;
  String department;
  String position;
  String salary;
  String email;
  String phone;
  _myOutputState(this.name,this.nrc,this.gender,this.department,this.position,this.salary,this.email,this.phone);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context){
           return viewDetail(name, nrc, gender, department, position, salary, email, phone);
          }));
        });
      },
      child: Container(
        
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Material(
            elevation: 18,
            shadowColor: Colors.grey,
            child: Card(
              child: Row(
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
        ),
      ),
    );
  }
}


class mycontainer extends StatefulWidget {
  const mycontainer({Key? key}) : super(key: key);

  @override
  State<mycontainer> createState() => _mycontainerState();
}

class _mycontainerState extends State<mycontainer> {
  @override
  Widget build(BuildContext context) {
  MyDataAccess md=new MyDataAccess();
  List<Employee> mycollection=md.getData();

    return Container(
     child: ListView.builder(
         itemBuilder: (BuildContext,index){
         Employee c=  mycollection[index];

           return myOutput(c.name,c.nrc,c.gender,c.department,c.position,c.salary,c.email,c.phone);
         },
         itemCount: mycollection.length,
     )
    );

     
  }
}
