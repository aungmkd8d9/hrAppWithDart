import 'package:aung_myo_khant_assignment/Forms/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



class coverPage extends StatelessWidget {
  const coverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: getStarted()
      )
    );
  }
}

class getStarted extends StatefulWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  State<getStarted> createState() => _getStartedState();
}

class _getStartedState extends State<getStarted> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (Colors.white
        )
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
            child: Image(
                image: AssetImage('images/logo.png')
            ),
            ),
          ),
          Expanded(
            child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 270.0, bottom: 5.0),
                  child: SizedBox(
                    width: 500,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
                        ), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return LoginTest();
                      }));
                    },
                        child: Text('Get Started', style: TextStyle(color: Colors.white , fontSize: 25),)
                    )
            ),
          )
            ),
            ),
            ],
      ),
    );
  }
}




