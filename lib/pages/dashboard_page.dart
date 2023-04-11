import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/custom_button.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:bppshop/model/agent_dashboard_model.dart';
import 'package:bppshop/pages/bottom_nav_bar/agent_profile_page.dart';
import 'package:bppshop/providers/agent_dashboard_provider.dart';
import 'package:bppshop/providers/bottom_navigation_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  static const String routeName = '/dashboard_page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  @override
  void initState() {
    Provider.of<AgentDashboardProvider>(context, listen: false).getAgentDashboardData();
    super.initState();
  }

  List<AgentDashboardModel> agentDashboardData = [];

  @override
  Widget build(BuildContext context) {
    agentDashboardData = Provider.of<AgentDashboardProvider>(context).agentDashboardData;
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
            title: Text("Dashboard", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
          ),
          body: agentDashboardData.isNotEmpty?Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileSection(),
                  Container(
                    margin: EdgeInsets.only(bottom: 12.h),
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    color: primaryWhite,
                    child: Column(
                      children: [
                        Row(children: [
                          Expanded(
                            flex: 2,
                            child: DashboardCustomContainer(onTap: (){}, title: "Total Customer", amount: "${agentDashboardData[0].data!.totalCustomers}", image: "images/totalcustomer.png", color: primaryOrange,),
                          ),
                          SizedBox(width: 12.w,),
                          Expanded(
                            flex: 2,
                            child: DashboardCustomContainer(onTap: (){}, title: "Total Withdraw", amount: "${agentDashboardData[0].data!.totalWithdraw}", image: "images/withdraw.png", color: primaryNaviBlue,),),
                        ],),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          child: Row(children: [
                            Expanded(
                              flex: 2,
                              child: DashboardCustomContainer(onTap: (){}, title: "Total Sale Amount", amount: "৳${agentDashboardData[0].data!.totalSaleAmount}", image: "images/cashcoin.png", color: primaryGreen,),
                            ),
                            SizedBox(width: 12.w,),
                            Expanded(
                              flex: 2,
                              child: DashboardCustomContainer(onTap: (){}, title: "Total Orders", amount: "${agentDashboardData[0].data!.totalOrders}", image: "images/cartcheck.png", color: beguniColor,),),
                          ],),
                        ),
                        Row(children: [
                          Expanded(
                            flex: 2,
                            child: DashboardCustomContainer(onTap: (){}, title: "Total Commission", amount: "৳${agentDashboardData[0].data!.totalCommission}", image: "images/cashstack.png", color: lightGreen,),
                          ),
                          SizedBox(width: 12.w,),
                          Expanded(
                            flex: 2,
                            child: DashboardCustomContainer(onTap: (){}, title: "Total Purchase", amount: "${agentDashboardData[0].data!.totalPurchase}", image: "images/cartplus.png", color: secondaryRed,),),
                        ],),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ):SizedBox(height: 0.h,),
          bottomNavigationBar: bottomNavigationBarProvider.bottomNavigationBar(context,false),
        );
      }
    );
  }
}

