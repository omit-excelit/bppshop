import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/pages/bottom_nav_bar/agent_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard_page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text("Dashboard", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileSection(),
              Container(
                margin: EdgeInsets.only(bottom: 12.h),
                padding: EdgeInsets.all(12),
                width: double.infinity,
                color: primaryWhite,
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: DashboardCustomContainer(onTap: (){}, title: "Total Customer", amount: "5000", image: "images/totalcustomer.png", color: primaryOrange,),
                      ),
                      SizedBox(width: 12.w,),
                      Expanded(
                        flex: 2,
                        child: DashboardCustomContainer(onTap: (){}, title: "Total Withdraw", amount: "2", image: "images/withdraw.png", color: primaryNaviBlue,),),
                    ],),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Row(children: [
                          Expanded(
                            flex: 2,
                            child: DashboardCustomContainer(onTap: (){}, title: "Total Sale Amount", amount: "৳5000000", image: "images/cashcoin.png", color: primaryGreen,),
                          ),
                          SizedBox(width: 12.w,),
                          Expanded(
                            flex: 2,
                            child: DashboardCustomContainer(onTap: (){}, title: "Total Orders", amount: "5000", image: "images/cartcheck.png", color: beguniColor,),),
                        ],),
                    ),
                    Row(children: [
                      Expanded(
                        flex: 2,
                        child: DashboardCustomContainer(onTap: (){}, title: "Total Commission", amount: "৳45621232", image: "images/cashstack.png", color: lightGreen,),
                      ),
                      SizedBox(width: 12.w,),
                      Expanded(
                        flex: 2,
                        child: DashboardCustomContainer(onTap: (){}, title: "Total Purchase", amount: "152668", image: "images/cartplus.png", color: secondaryRed,),),
                    ],),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

