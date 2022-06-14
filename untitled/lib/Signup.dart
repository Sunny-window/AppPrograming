import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    height: 160.h,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 80.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15.w),
                          child: Text(
                            textAlign: TextAlign.center,
                            '이름',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _name,
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
                          width: 80.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'ID',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _id,
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
                          width: 80.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Password',
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _pwd,
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
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 80.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            '전화번호',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _tel,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'tel',
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
                          width: 80.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            '은행',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _bank,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'bank',
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
                          width: 80.w,
                          height: 35.h,
                          margin: EdgeInsets.only(right: 15),
                          child: Text(
                            textAlign: TextAlign.center,
                            '계좌번호',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _account,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'account',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50.h,),
                  Container(
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
                              '취소',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        SizedBox(width: 55.w,),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff41AA6A),
                              minimumSize: Size(90.w, 45.h),
                            ),
                            child: Text(
                                '확인',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp
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
