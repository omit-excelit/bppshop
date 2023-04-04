import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/pages/bottom_nav_bar/add_customer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerListPage extends StatefulWidget {
  const CustomerListPage({Key? key}) : super(key: key);

  @override
  State<CustomerListPage> createState() => _CustomerListPageState();
}

class _CustomerListPageState extends State<CustomerListPage> {
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
        title: Text("Customer", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Customer List", style: myStyleMontserrat(18.sp, homeItemColor, FontWeight.w500),),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddCustomerPage()));
                    },
                    child: Container(
                      height: 36.h,
                      width: 183.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                      color: primaryBlue),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/personfilladd.png", color: primaryWhite, height: 24.h, width: 24.w,),
                          SizedBox(width: 10.w,),
                          Text("Add New Customer", style: myStyleMontserrat(12.sp, primaryWhite, FontWeight.w600),),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
