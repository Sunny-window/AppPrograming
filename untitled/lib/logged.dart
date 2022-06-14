import 'package:flutter/material.dart';
import 'package:untitled/Contract_add.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Contract_list.dart';

class Index2 extends StatefulWidget {
  @override
  State createState() => _Index2();
}

class _Index2 extends State {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(412, 915));
    return Scaffold(
        body: Container(
            color: Color(0xffDBF5E1),
            child: Center(
                child: Column(children: <Widget>[
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
                child: Container(
                  width: 130.w,
                  height: 35.h,
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    '김이름',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Container(
                  width: 220.w,
                  height: 35.h,
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    '011 - 1234 - 3456',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Container(
                  width: 220.w,
                  height: 35.h,
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    '부산은행',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Container(
                  width: 220.w,
                  height: 35.h,
                  margin: EdgeInsets.only(right: 15),
                  child: Text(
                    textAlign: TextAlign.center,
                    '112-****-0203-97',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff41AA6A),
                          minimumSize: Size(90.w, 45.h),
                        ),
                        child: Text(
                          '계약등록',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Contract_add()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 55.w,
                    ),
                    Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff41AA6A),
                          minimumSize: Size(90.w, 45.h),
                        ),
                        child: Text(
                          '계약목록',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Contract_list()),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ]))));
  }
}
