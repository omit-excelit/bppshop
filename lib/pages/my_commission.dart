import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/commission_history_page.dart';
import 'package:bppshop/pages/pending_commission_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCommissionPage extends StatefulWidget {
  static const String routeName = '/my_commission_page';
  const MyCommissionPage({Key? key}) : super(key: key);

  @override
  State<MyCommissionPage> createState() => _MyCommissionPageState();
}

class _MyCommissionPageState extends State<MyCommissionPage> {
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
        title: Text("My Commission", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PendingCommissionPage()));
                  },
                  title: "Pending Commission",
                  image: "images/customerlist.png",
                ),
              ),
              SizedBox(width: 12.w,),
              Expanded(
                flex: 2,
                child: CustomHomePageContainer(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CommissionHistoryPage()));
                  },
                  title: "Commission History",
                  image: "images/commissionhistory.png",
                ),),
            ],),
          ],
        ),
      ),
    );
  }
}
