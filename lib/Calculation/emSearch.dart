import 'package:aung_myo_khant_assignment/Forms/HomePage.dart';
import 'package:flutter/material.dart';
import 'MyDataAccess.dart';


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.indigo).copyWith(secondary: Colors.purpleAccent),
        ),
        home: searchLogin()
    );
  }
}

class searchLogin extends StatefulWidget {
  const searchLogin({Key? key}) : super(key: key);

  @override
  State<searchLogin> createState() => _searchLoginState();
}

class _searchLoginState extends State<searchLogin> {

String name = '';
bool answer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Center(
              child: Text('Serarch Employee Data')),
        ),
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
                            Text('Search Form',
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
                        name = value;
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
                    height: 60,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Material(
                      elevation: 18,
                      shadowColor: Colors.grey,
                      child: ElevatedButton(
                        child: Text('Search',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lucida Console',
                              fontSize: 15,
                              color: Colors.black,
                            )
                        ),
                        onPressed: () {
                          setState(() {
                            MyDataAccess da = new MyDataAccess();
                            answer= da.searchData(name);
                          });

                        },
                      ),
                    )),
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
                            Text((answer==true)?'Found $name' : 'Not Found $name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lucida Console',
                                  fontSize: 25,
                                  color: Colors.black,
                                )
                            ),
                          ],
                        )
                    )
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Material(
                    elevation: 18,
                    shadowColor: Colors.grey,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return HomePage();
                          }));

                        });

                      },
                      child: Text('Back To Home',
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
            )));
  }
}