import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contract_list extends StatefulWidget {
  const Contract_list({Key? key}) : super(key: key);

  @override
  State<Contract_list> createState() => _Contract_listState();
}

class _Contract_listState extends State<Contract_list> {
  var titleList = [
    '김ㅇㅇ',
    '나ㅇㅇ',
    '박ㅇㅇ',
    '이ㅇㅇ',
    '장ㅇㅇ',
    '황ㅇㅇ',
    '곽ㅇㅇ',
    '박ㅇㅇ',
    '김ㅇㅇ',
  ];
  var imageList = [
    'img/borrow.png',
    'img/lend.png',
    'img/lend.png',
    'img/borrow.png',
    'img/lend.png',
    'img/borrow.png',
    'img/borrow.png',
    'img/lend.png',
    'img/lend.png',
  ];
  var Repayment = [
    '즉시상환',
    '알림전송',
    '알림전송',
    '즉시상환',
    '알림전송',
    '즉시상환',
    '즉시상환',
    '알림전송',
    '알림전송',
  ];
  var amountList = [
    '1,000,000',
    '200,000',
    '470,000',
    '1,350,000',
    '5,200,000',
    '7,700',
    '250,000',
    '55,000',
    '100,000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDBF5E1),
        resizeToAvoidBottomInset: false,
        body: Center(
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
            height: 25.h,
          ),
          SizedBox(
            child: Center(
              child: Text(
                "계약 목록",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: titleList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        top: 5.h, bottom: 5.h, left: 10.w, right: 10.w),
                    color: Colors.white,
                    child: Card(
                      color: Color(0xffDBF5E1),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 80.w,
                            height: 100.h,
                            child: Image.asset(
                              imageList[index],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:30.w),
                            child: Column(
                              children: [
                                Text(
                                  "계약자 : " + titleList[index],
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    //fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    amountList[index] + " 원",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:90.w),
                            child: Text(
                                Repayment[index]
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ])));
  }
}
