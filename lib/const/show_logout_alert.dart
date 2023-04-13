import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

logoutAlert(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          content: Container(
            width: double.maxFinite,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.w),
                    child: Text(
                      "Log Out",
                      style: myStyleMontserrat(14.sp,
                          primaryOrange, FontWeight.w500),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 10.h,),
                  Text("Are you sure you want to log out of your account", style: myStyleMontserrat(12.sp, primaryBlack),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 15.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          alignment: Alignment.center,
                          height: 30.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryOrange.withOpacity(0.3)),
                              borderRadius: BorderRadius.all(Radius.circular(5.r))
                          ),
                          child: Text("No Thanks", style: myStyleMontserrat(12.sp, secondaryBlack),),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamedAndRemoveUntil(SigninPage.routeName, (route) => false);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 28.w),
                          alignment: Alignment.center,
                          height: 30.h,
                          decoration: BoxDecoration(
                              color: primaryOrange,
                              borderRadius: BorderRadius.all(Radius.circular(5.r))
                          ),
                          child: Text("Log Out", style: myStyleMontserrat(12.sp, primaryWhite),),
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        );
      });
}