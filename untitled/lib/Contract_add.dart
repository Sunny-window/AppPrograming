import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contract_add extends StatefulWidget {
  @override
  State createState() => _Contract_add();
}

class _Contract_add extends State {
  String debtor = "", creditor = "", amount = "", interest = "", deadline = "", note = "";
  final _debtor = TextEditingController();
  final _creditor = TextEditingController();
  final _amount = TextEditingController();
  final _interest = TextEditingController();
  final _deadline = TextEditingController();
  final _note = TextEditingController();

  @override
  void dispose(){
    _debtor.dispose();
    _creditor.dispose();
    _amount.dispose();
    _interest.dispose();
    _deadline.dispose();
    _note.dispose();
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
                            '채무자',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _debtor,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'debtor',
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
                            '채권자',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _creditor,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'creditor',
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
                            '금액',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _amount,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'amount',
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
                            '이자',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _interest,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'interest',
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
                            '상환기한',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _deadline,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'deadline',
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
                            '비고',
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 35.h,
                          child: TextField(
                            controller: _note,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'note',
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
