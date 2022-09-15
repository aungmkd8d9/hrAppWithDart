import 'dart:ui';
import 'package:flutter/material.dart';
import 'HomePage.dart';


class LoginTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData( primarySwatch: Colors.indigo),
        home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

String user_name='';
String user_password='';

bool checklogin(String n,String pw){
  if(n=='gusto' && pw=='123'){
    return true;
  }
  else{
    return false;
  }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
            title:Text("Login Page")),
        backgroundColor: Colors.white,
        body: Padding(

            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
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
                            Text('Login Form',
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
                      onChanged: (value){
                        user_name=value;
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
                        user_password=value;
                      },
                      // to hide the text .. to get password feature
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            )
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.block,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),

                Container(
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Material(
                      elevation: 18,
                      shadowColor: Colors.grey,
                      child: ElevatedButton(
                        child: Text('Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Lucida Console',
                          ),
                        ),
                        onPressed: () {

                          if(checklogin(user_name,user_password)){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return HomePage();
                            }));
                          }else{
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return AlertDialog(
                                title: const Text('Login error'),
                                content: SingleChildScrollView(
                                  child: ListBody(
                                    children: const [
                                      Text('User name or password is incorrect!')
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    child: const Text('Try Again'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            }));
                          }
                        },
                      ),
                    )),
              ],
            )
        )
    );
  }
}


