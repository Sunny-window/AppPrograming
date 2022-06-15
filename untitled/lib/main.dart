import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'Signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 823),
      builder: (_,child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hello',
      home: child,
    ),
      child: Index(),
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
      backgroundColor: Color(0xffDBF5E1),
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 150.h,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                child: Text(
                  'LENDER',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 77.sp,
                    color: Color(0xff41AA6A),
                  ),
                ),
              ),
              Container(
                height: 200.h,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
              ),
              Container(
                  height: 150.h,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 50.w,
                          height: 30.h,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                border: Border.all(width: 1)),
                            width: 100.w,
                            height: 35.h,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Login()),);
                              },
                              child: Text('LOGIN',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            )
                        ),
                        Container(
                          width: 80.w,
                          height: 30.h,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                border: Border.all(width: 1)),
                            width: 100.w,
                            height: 35.h,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Signup()),);
                              },
                              child: Text('SIGN UP',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )
                        ),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}