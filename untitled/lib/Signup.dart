import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State createState() => _Signup();
}

class _Signup extends State {
  String name = "", id = "", pwd = "", tel = "", bank = "", account = "";
  final _name = TextEditingController();
  final _id = TextEditingController();
  final _pwd = TextEditingController();
  final _tel = TextEditingController();
  final _bank = TextEditingController();
  final _account = TextEditingController();

  @override
  void dispose(){
    _name.dispose();
    _id.dispose();
    _pwd.dispose();
    _tel.dispose();
    _bank.dispose();
    _account.dispose();
    super.dispose();
  }

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
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 21,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            '이름',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 21,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Name',
                            ),
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
                          width: 80,
                          height: 21,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'ID',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 21,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'ID',
                            ),
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
                          width: 80,
                          height: 21,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Password',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 21,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Password',
                            ),
                            obscureText: true,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
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
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                            onPressed: () {

                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(width: 55,),
                        Container(
                          child: RaisedButton(
                            color: Color(0xff41AA6A),
                            child: Text(
                                '확인',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
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
