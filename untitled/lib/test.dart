import 'package:flutter/material.dart';
import 'main.dart';

class Index2 extends StatefulWidget {
  @override
  State createState() => _Index2();
}

class _Index2 extends State {
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
                      'Login Success!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 70,
                        color: Color(0xff41AA6A),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}