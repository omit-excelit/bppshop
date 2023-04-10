import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/customer_list_table.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/pages/bottom_nav_bar/add_customer_page.dart';
import 'package:bppshop/providers/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CustomerListPage extends StatefulWidget {
  static const String routeName = '/customer_list_page';
  const CustomerListPage({Key? key}) : super(key: key);

  @override
  State<CustomerListPage> createState() => _CustomerListPageState();
}

class _CustomerListPageState extends State<CustomerListPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationBarProvider>(
      builder: (context, bottomNavigationBarProvider, child){
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.h,bottom: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Customer List", style: myStyleMontserrat(18.sp, homeItemColor, FontWeight.w500),),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(AddCustomerPage.routeName);
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
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w,right: 12.w,bottom: 12.h),
                  child: TextFormField(
                    controller: searchController,
                    style: TextStyle(color: secondaryBlack),
                    decoration: InputDecoration(
                      prefixIcon: Image.asset("images/search.png"),
                      contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                      hintText: "Search customer name/id",
                      hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w500),
                      filled: true,
                      fillColor: primaryWhite,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.w, color: textfieldBorderColor),
                          borderRadius: BorderRadius.circular(8.r)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.w, color: textfieldBorderColor),
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                  ),
                ),
                CustomerListTable(),
                Padding(
                  padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.h,bottom: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){},
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
                        child: Text("1", style: myStyleMontserrat(14.sp, countColor, FontWeight.w600),),
                      ),
                      GestureDetector(
                        onTap: (){},
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
          bottomNavigationBar: bottomNavigationBarProvider.bottomNavigationBar(context, false),
        );
      }
    );
  }
}
