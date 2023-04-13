import 'dart:convert';

import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/show_toast.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/http_data/custom_http.dart';
import 'package:bppshop/pages/landing_page.dart';
import 'package:bppshop/pages/auth/signup_page.dart';
import 'package:bppshop/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninPage extends StatefulWidget {
  static const String routeName = '/sign-in_page';
  SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  bool isLoading = false;
  SharedPreferences ?sharedPreferences;

  getLoginData() async {
    try {
      setState(() {
        isLoading = true;
      });
      String urlLink = "${baseUrl}login";
      var response = await http.post(Uri.parse(urlLink), body: {
        "agent_mobile_number": numberController.text.toString(),
        "password": passwordController.text.toString()
      });
      //print("ddddddd${response.statusCode}");
      //print("ddddddd${response.body}");
      setState(() {
        isLoading = false;
      });

      if(response.statusCode==200){
        var data = jsonDecode(response.body);
        if (data["token"] != null ) {
          print("Token is ${data["token"]}");
          //showSnackBar(context: context, content: "Login Successfully");
          sharedPreferences = await SharedPreferences.getInstance();
          sharedPreferences!.setString("token", data["token"]);
          Provider.of<AuthProvider>(context ,listen: false);
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> LandingPage()), (route) => false);
          showToastMessage("Login Successfully");
        } else {
          showToastMessage("Email or Password doesn't match");
          //showSnackBar(context: context, content: "Email or Password doesn't match");
        }
      }else{
        showToastMessage("Email or Password doesn't match");
        //showSnackBar(context: context, content: "Email or Password doesn't match");
      }
    } catch (e) {
      print("Problem is ------ ${e}");
    }
  }



  @override
  void dispose() {
    // TODO: implement dispose
    numberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                            Text("Enter Number",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                            SizedBox(height: 4.h,),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              controller: numberController,
                              style: TextStyle(color: secondaryBlack),
                              validator: (value) {
                                if (value?.length != 11){
                                  return 'Phone Number must be of 11 digit.';
                                }
                                if (value == null) {
                                  return "Phone Number required.";
                                }
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                                hintText: "Enter Your Phone Number",
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
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              obscureText: _obscureText,
                              controller: passwordController,
                              style: TextStyle(color: secondaryBlack),
                              validator: (value) {
                                if (value == null) {
                                  return "Password required.";
                                }
                                if (value.length < 8) {
                                  return "Password should be minimum 8 characters.";
                                }
                              },
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
                          getLoginData();
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

// saveUserToken() async{
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   return sharedPreferences!.getString("token");
// }