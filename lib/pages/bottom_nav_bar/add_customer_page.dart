import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/pages/customer_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController thanaController = TextEditingController();
  TextEditingController areaController = TextEditingController();
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
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("Add Customer",style: myStyleMontserrat(18.sp, primaryBlack, FontWeight.w500),),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0.r), color: primaryWhite),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Customer Name",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: numberController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Enter Name",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Customer Mobile",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: nameController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "Enter Number",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Customer Email",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: emailController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w),
                              hintText: "example@gmail.com",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Customer District",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
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
                              hintText: "Select",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),SizedBox(height: 10.h,),
                          Text("Customer Thana",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
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
                              hintText: "Select",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),SizedBox(height: 10.h,),
                          Text("Customer Area",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
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
                              hintText: "Select",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              filled: true,
                              fillColor: textFieldColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text("Customer Local Address",style: myStyleMontserrat(12.sp, primaryBlack, FontWeight.w400),),
                          SizedBox(height: 4.h,),
                          TextFormField(
                            controller: addressController,
                            style: TextStyle(color: secondaryBlack),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12.w, right: 12.w, top: 40.h, bottom: 40.h),
                              hintText: "16/1 (9th Floor), Alhaz Shamsuddin Mansion, New Eskaton Garden Road",
                              hintStyle: myStyleMontserrat(14.sp, secondaryBlack, FontWeight.w400),
                              hintMaxLines: 2,
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
                    SizedBox(height: 18.h,),
                    Align(
                      alignment: Alignment.topRight,
                      child: AddandUpdateButton(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerProfilePage()));
                      }, title: "Add"),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

