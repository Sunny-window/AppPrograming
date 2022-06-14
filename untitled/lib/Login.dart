import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'logged.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FBlogin extends StatefulWidget {
  const FBlogin({Key? key}) : super(key: key);

  @override
  State<FBlogin> createState() => _FBloginState();
}

class _FBloginState extends State<FBlogin> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Login();
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State createState() => _Login();
}

class _Login extends State<Login> {
  bool idcheck = false;
  bool pwdcheck = false;
  final _id = TextEditingController();
  final _pwd = TextEditingController();

  static Future<User?> loginUisngEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User found for that email");
      }
    }

    return user;
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(412, 915));
    return Scaffold(
        body: Container(
            color: Color(0xffDBF5E1),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 80.h,
                      color: Color(0xff41AA6A),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          'L E N D E R',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 270.h,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 130.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'ID',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 220.w,
                          height: 36.h,
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
                          width: 130.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 220.w,
                          height: 36.h,
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
                    height: 50.h,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 15.w),
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
                          width: 55.w,
                        ),
                        Container(
                          child: RaisedButton(
                            color: Color(0xff41AA6A),
                            child: Text(
                              '확인',
                              style: TextStyle(color: Colors.white),
                            ),
                            /*onPressed: () async {
                              User? user = await loginUisngEmailPassword(
                                  email: _id.text,
                                  password: _pwd.text,
                                  context: context);
                              if (user != null) {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Index2()));
                              } else {
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
                                    }
                                  );
                               }
                            },
                            */

                            ///*
                            onPressed: () {
                              idcheck = (_id.text == "root");
                              pwdcheck = (_pwd.text == "1234");
                              if (idcheck && pwdcheck) {
                                print(_id.text);
                                print(_pwd.text);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Index2()),
                                );
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
                            //*/
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
