import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController thanaController = TextEditingController();
  TextEditingController areaController = TextEditingController();
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
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 6.h),
                  child: Image.asset("images/logo1.png", height: 70.h, width: 70.w,),
                ),
                Text("Welcome To\nBPPShop Agent Panel", textAlign: TextAlign.center, style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w500),),
                SizedBox(height: 12.h,),
                Container(
                  margin: EdgeInsets.only(left: 12.w,right: 12.w),
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0.r), color: primaryWhite),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: Text("Create Account", style: myStyleMontserrat(22.sp, primaryBlack, FontWeight.w500),),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Enter Name",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              controller: numberController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Name",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Enter Phone Number",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              controller: nameController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Phone Number",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Enter Email",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              controller: emailController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Email",
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
                                    _obscureText?Icons.visibility_off_rounded:Icons.visibility,
                                    color: secondaryBlack,
                                    size: 18.sp,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Password",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Text("Select District",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              controller: districtController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: secondaryBlack,
                                  size: 26.sp,
                                ),
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Select District",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),SizedBox(height: 10.h,),
                            Text("Select Thana",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              controller: thanaController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: secondaryBlack,
                                  size: 26.sp,
                                ),
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Select Thana",
                                hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                                filled: true,
                                fillColor: textFieldColor,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                            ),SizedBox(height: 10.h,),
                            Text("Select Thana",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              controller: areaController,
                              style: TextStyle(color: secondaryBlack),
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: secondaryBlack,
                                  size: 26.sp,
                                ),
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Select Area",
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
                      customButton(() { }, "Sign Up"),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SigninPage()));
                              },
                              child: Text("Sign in", style: myStyleMontserrat(14.sp, darkBlue, FontWeight.w600))),
                          Text(" Instead!", style: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400)),
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
