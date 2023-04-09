import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/custom_textfield.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bppshop/pages/bottom_nav_bar/home_page.dart';
import 'package:bppshop/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatefulWidget {
  static const String routeName = '/sign-in_page';
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldBgColor,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
                  child: Image.asset("images/logo1.png", height: 70.h, width: 70.w,),
                ),
                Text("Welcome To\nBPPShop Agent Panel", textAlign: TextAlign.center, style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w500),),
                SizedBox(height: 70.h,),
                Container(
                  margin: EdgeInsets.only(left: 12.w,right: 12.w),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0.r), color: primaryWhite),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: Text("Login", style: myStyleMontserrat(22.sp, primaryBlack, FontWeight.w500),),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Enter Name",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              controller: emailController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Enter Your Email",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Enter Password",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              obscureText: _obscureText,
                              controller: passwordController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText ? Icons.visibility_off_rounded: Icons.visibility,
                                    color: secondaryBlack,
                                    size: 18.sp,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Enter Your Password",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.h,),
                      customButton(() {
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>BottomNavBar()), (route) => false);
                      }, "Login"),
                      SizedBox(height: 10.h,),
                      Text("Forgot Your Password?", style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)),
                      SizedBox(height: 23.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Need an Account?", style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed(SignUpPage.routeName);
                            },
                              child: Text(" Sign up", style: myStyleMontserrat(14.sp, darkBlue, FontWeight.w600))),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
