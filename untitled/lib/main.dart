import 'package:flutter/material.dart';
import 'Login.dart';
import 'Signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: Index(),
    );
  }
}

class Index extends StatefulWidget {
  @override
  State createState() => _Index();
}

class _Index extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xffDBF5E1),
          child: Center(
              child: Column(
            children: <Widget>[
              Container(
                height: 150,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                child: Text(
                  'LENDER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                    color: Color(0xff41AA6A),
                  ),
                ),
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                  height: 150,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border.all(width: 1)),
                          width: 100,
                          height: 30,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
                            },
                            child: Text('LOGIN',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                )
                            ),
                          )
                        ),
                        Container(
                          width: 80,
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border.all(width: 1)),
                          width: 100,
                          height: 30,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()),);
                            },
                          child: Text('SIGN UP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              )),
                          )
                        ),
                      ],
                    ),
                  ))
            ],
          ))),
    );
  }
}