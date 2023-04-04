import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawerPage extends StatefulWidget {
  const MyDrawerPage({Key? key}) : super(key: key);

  @override
  State<MyDrawerPage> createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<MyDrawerPage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 233.w,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              //height: 72.h,
              color: drawerHeaderColor,
              child: Row(
                children: [
                  Image.asset("images/logo1.png",height: 48.h,width: 48.h,),
                  SizedBox(width: 17.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BPPSHOP", style: myStyleMontserrat(16.sp, secondaryWhite, FontWeight.w500),),
                      Text("Agent Panel", style: myStyleMontserrat(16.sp, secondaryWhite, FontWeight.w500),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.w, 18.h, 17.w, 12.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          count = 1;
                        });
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset("images/dash.png",height: 18.h,width: 18.w, color: count == 1?primaryOrange:drawerItemColor,),
                            SizedBox(width: 12.w,),
                            Text("Dashboard", style: myStyleMontserrat(16.sp, count == 1?primaryOrange:drawerItemColor, FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          count = 2;
                        });
                      },
                      child: Container(
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("images/people.png",height: 18.h,width: 18.w, color: count == 2?primaryOrange:drawerItemColor,),
                                SizedBox(width: 12.w,),
                                Text("Customer", style: myStyleMontserrat(16.sp, count == 2?primaryOrange:drawerItemColor, FontWeight.w500),),
                              ],
                            ),
                            Icon(Icons.arrow_drop_down_outlined, size: 25, color: count == 2?primaryOrange:drawerItemColor,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          count = 3;
                        });
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset("images/clockhistory.png",height: 18.h,width: 18.w,color: count == 3?primaryOrange:drawerItemColor,),
                            SizedBox(width: 12.w,),
                            Text("Order History", style: myStyleMontserrat(16.sp, count == 3?primaryOrange:drawerItemColor, FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          count = 4;
                        });
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("images/cash.png",height: 18.h,width: 18.w, color: count == 4?primaryOrange:drawerItemColor,),
                                SizedBox(width: 12.w,),
                                Text("My Commission", style: myStyleMontserrat(16.sp, count == 4?primaryOrange:drawerItemColor, FontWeight.w500),),
                              ],
                            ),
                            Icon(Icons.arrow_drop_down_outlined, size: 25, color: count == 4?primaryOrange:drawerItemColor,),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          count = 5;
                        });
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset("images/walletfill.png",height: 18.h,width: 18.w, color: count == 5?primaryOrange:drawerItemColor,),
                            SizedBox(width: 12.w,),
                            Text("Wallet", style: myStyleMontserrat(16.sp, count == 5?primaryOrange:drawerItemColor, FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h,),
                    GestureDetector(
                      onTap: (){
                        count = 6;
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset("images/logout.png",height: 18.h,width: 18.w, color: count == 6?primaryOrange:drawerItemColor,),
                            SizedBox(width: 12.w,),
                            Text("Logout", style: myStyleMontserrat(16.sp, count == 6?primaryOrange:drawerItemColor, FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
