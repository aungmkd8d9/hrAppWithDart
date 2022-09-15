import 'package:aung_myo_khant_assignment/Calculation/MyDataAccess.dart';
import 'package:flutter/material.dart';



class RegD extends StatelessWidget {
  const RegD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo).copyWith(secondary: Colors.purpleAccent),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
              iconSize: 30.0,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text('Register Form'),
          automaticallyImplyLeading: false,
        ),
        body: RegisterDart(),
      ),
    );
  }
}

class RegisterDart extends StatefulWidget {
  const RegisterDart({Key? key}) : super(key: key);

  @override
  State<RegisterDart> createState() => _RegisterDartState();
}

class _RegisterDartState extends State<RegisterDart> {
  @override

  String _gender = 'Male';
  TextEditingController _name = new TextEditingController();
  TextEditingController _nrc = new TextEditingController();
  String _department = 'HR';
  TextEditingController _position = new TextEditingController();
  String _salary = '';
  TextEditingController _phone = new TextEditingController();
  TextEditingController _email = new TextEditingController();


  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10, bottom:10),
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
                      Text('Register Form',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lucida Console',
                            fontSize: 20,
                            color: Colors.black,
                          )
                      ),
                    ],
                  )
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _name,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _nrc,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter NRC',
                      prefixIcon: Icon(
                        Icons.perm_identity,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
            padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,

                child: DropdownButton<String>(
                  value: _gender,
                  style: const TextStyle(color: Colors.black87, fontSize: 16.0),
                  onChanged: (String? newValue) {
                    setState(() {
                      _gender = newValue!;
                    });
                  },
                  items: <String>['Male', 'Female']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )),
              ),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _position,
                    onChanged: (value) {
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter Position',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: DropdownButton<String>(
                  value: _department,
                  style: const TextStyle(color: Colors.black87, fontSize: 16.0),
                  onChanged: (String? newValue) {
                    setState(() {
                      _department = newValue!;
                    });
                  },
                  items: <String>['HR', 'Academic', 'Finance', 'Marketing']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _email,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Material(
                elevation: 18,
                shadowColor: Colors.grey,
                child: TextField(
                    controller: _phone,
                    onChanged: (value) {

                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Enter Phone',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                    )),
              )),
          Container(
            height: 60,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Material(
              elevation: 18,
              shadowColor: Colors.grey,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Employee c = Employee(
                        _name.text,
                        _nrc.text,
                        _gender,
                        _department,
                        _position.text,
                        _salary,
                        _email.text,
                        _phone.text);
                    MyDataAccess mda = new MyDataAccess();
                    int size = mda.saveData(c);
                    print(size);
                  });
                },
                child: Text('Save',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lucida Console',
                      fontSize: 15,
                      color: Colors.black,
                    )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
