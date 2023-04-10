import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/const/transaction_table.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/providers/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class WalletPage extends StatefulWidget {
  static const String routeName = '/wallet_page';
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
      builder: (context, bottomNavigationBarProvider, child){
        return SafeArea(
          child: Scaffold(
            drawer: MyDrawerPage(),
            key: _scaffoldkey,
            backgroundColor: bgColor,
            appBar: AppBar(
              backgroundColor: appBarColor,
              centerTitle: false,
              leading: InkWell(
                  onTap: (){
                    _scaffoldkey.currentState!.openDrawer();
                  },
                  child: Icon(Icons.menu, size: 16.5.sp, color: secondaryWhite,)),
              title: Text("Wallet", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(12),
                      color: primaryWhite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Available Balance", style: myStyleMontserrat(18.sp, homeItemColor, FontWeight.w500),),
                          SizedBox(height: 17.5.h,),
                          Row(
                            children: [
                              Text("Tk. ", style: myStyleMontserrat(24, homeItemColor, FontWeight.w400),),
                              Text("568619825656", style: myStyleMontserrat(24, homeItemColor, FontWeight.w600),),
                            ],
                          ),
                          SizedBox(height: 40.h,),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 32.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(shape: BoxShape.circle,
                                        color: circleColor),
                                    child: Image.asset("images/arrowright.png", color: homeItemColor,),
                                  ),
                                  SizedBox(width: 12.h,),
                                  Text("+ 0.00", style: myStyleMontserrat(14, homeItemColor, FontWeight.w600),),
                                ],
                              ),
                              SizedBox(width: 84.w,),
                              Row(
                                children: [
                                  Container(
                                    height: 32.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(shape: BoxShape.circle,
                                        color: circleColor),
                                    child: Image.asset("images/arrowbottomleft.png", color: homeItemColor,),
                                  ),
                                  SizedBox(width: 12.h,),
                                  Text("+ 0.00", style: myStyleMontserrat(14, homeItemColor, FontWeight.w600),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.h, bottom: 12.h),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("Transaction History", style: myStyleMontserrat(18.sp, homeItemColor, FontWeight.w500),)),
                    ),
                    ReusableTransactionTablePage(),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.h, bottom: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                if(count>1){
                                  count --;
                                }
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 36.h,
                              width: 82.w,
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(4.r), bottomLeft: Radius.circular(4.r)),
                                  border: Border.all(width: 1.w, color: containerBorderColor), color: primaryWhite),
                              child: Text("Previous", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w400),),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 17.w),
                            height: 36.h,
                            color: primaryDeepBlue,
                            child: Text(count.toString(), style: myStyleMontserrat(14.sp, countColor, FontWeight.w600),),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                count ++;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 36.h,
                              width: 57.w,
                              decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(4.r), bottomRight: Radius.circular(4.r)),
                                  border: Border.all(width: 1.w, color: containerBorderColor), color: primaryWhite),
                              child: Text("Next", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w400),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: bottomNavigationBarProvider.bottomNavigationBar(context,false),
          ),
        );
      }
    );
  }
  int count = 1;
}
