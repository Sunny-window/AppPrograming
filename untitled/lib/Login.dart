import 'package:flutter/material.dart';
import 'test.dart';

class Login extends StatefulWidget {
  @override
  State createState() => _Login();
}

class _Login extends State {
  bool idcheck = false;
  bool pwdcheck = false;
  final _id = TextEditingController();
  final _pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Color(0xffDBF5E1),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 75,
                      color: Color(0xff41AA6A),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          'L E N D E R',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 270,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 130,
                          height: 30,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'ID',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 36,
                          child: TextField(
                            controller: _id,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'ID',
                            ),
                            onChanged: (id) {
                              //print(id);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 130,
                          height: 30,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 36,
                          child: TextField(
                            controller: _pwd,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Password',
                            ),
                            obscureText: true,
                            onChanged: (pwd) {
                              //print(pwd);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: RaisedButton(
                            color: Color(0xff41AA6A),
                            child: Text(
                              '취소',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              _id.clear();
                              _pwd.clear();
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          child: RaisedButton(
                            color: Color(0xff41AA6A),
                            child: Text(
                              '확인',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              idcheck = (_id.text == "root");
                              pwdcheck = (_pwd.text == "1234");
                              if (idcheck && pwdcheck) {
                                print(_id.text);
                                print(_pwd.text);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Index2()),);
                                //Navigator.pop(context);
                              } else {
                                print("Check ur id or pwd.");

                                showDialog(
                                    context: context,
                                    barrierDismissible: true,
                                    // 사용자가 다이얼로그 바깥을 터치할 때 닫히게 할 것인가?
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: SingleChildScrollView(
                                          child: Text('Check your ID or PWD.'),
                                        ),
                                        actions: <Widget>[
                                          FlatButton(
                                            child: Text('OK'),
                                            onPressed: () {
                                              Navigator.of(context).pop(); // 닫기
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
