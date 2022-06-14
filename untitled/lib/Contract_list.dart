import 'package:flutter/material.dart';
import 'package:untitled/Contract_add.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contract_list extends StatefulWidget {
  const Contract_list({Key? key}) : super(key: key);

  @override
  State<Contract_list> createState() => _Contract_listState();
}

class _Contract_listState extends State<Contract_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xffDBF5E1),
          child: Center(
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
              ))),
    );
  }
}
