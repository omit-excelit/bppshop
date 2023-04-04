import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bppshop/pages/customer_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
            child: Icon(Icons.arrow_back_outlined, size: 16.5.sp, color: secondaryWhite,)),
        title: Text("Customer", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                flex: 2,
                child: CustomHomePageContainer(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerListPage()));
                  },
                  title: "Customer List",
                  image: "images/customerlist.png",
                ),
              ),
              SizedBox(width: 12.w,),
              Expanded(
                flex: 2,
                child: CustomHomePageContainer(
                  onTap: (){
                  },
                  title: "Add Customer",
                  image: "images/addcustomer.png",
                ),),
            ],),
          ],
        ),
      ),
    );
  }
}
