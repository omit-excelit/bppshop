import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/pages/bottom_nav_bar/order_history_page.dart';
import 'package:bppshop/pages/customer_page.dart';
import 'package:bppshop/pages/dashboard_page.dart';
import 'package:bppshop/pages/my_commission.dart';
import 'package:bppshop/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
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
        title: Text("Home", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(children: [
              Expanded(
                flex: 2,
                child: CustomHomePageContainer(
                    onTap: (){
                      Navigator.of(context).pushNamed(DashboardPage.routeName);
                    },
                  title: "Dashboard",
                  image: "images/dashboard.png",
                ),
              ),
              SizedBox(width: 12.w,),
              Expanded(
                flex: 2,
                child: CustomHomePageContainer(
                  onTap: (){
                    Navigator.of(context).pushNamed(CustomerPage.routeName);
                  },
                  title: "Customer",
                  image: "images/customer.png",
                ),),
            ],),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: CustomHomePageContainer(
                    onTap: (){
                      Navigator.of(context).pushNamed(OrderHistoryPage.routeName);
                    },
                    title: "Order History",
                    image: "images/orderhistory.png",
                  ),
                ),
                SizedBox(width: 12.w,),
                Expanded(
                  flex: 2,
                  child: CustomHomePageContainer(
                    onTap: (){
                      Navigator.of(context).pushNamed(MyCommissionPage.routeName);
                    },
                    title: "My Commission",
                    image: "images/mycommission.png",
                  ),),
              ],),
            ),
            Row(children: [
              Expanded(
                flex: 2,
                child: CustomHomePageContainer(
                  onTap: (){
                    Navigator.of(context).pushNamed(WalletPage.routeName);
                  },
                  title: "Wallet",
                  image: "images/wallet.png",
                ),
              ),
              SizedBox(width: 12.w,),
              Expanded(
                flex: 2,
                child: Container(),),
            ],),
          ],),
        ),
      ),
    );
  }
}



