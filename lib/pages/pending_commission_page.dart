import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/drawer/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PendingCommissionPage extends StatefulWidget {
  const PendingCommissionPage({Key? key}) : super(key: key);

  @override
  State<PendingCommissionPage> createState() => _PendingCommissionPageState();
}

class _PendingCommissionPageState extends State<PendingCommissionPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  TextEditingController searchController = TextEditingController();
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
        title: Text("My Commission", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
    );
  }
}
