import 'package:bppshop/const/color.dart';
import 'package:bppshop/const/style.dart';
import 'package:bppshop/pages/agent_update_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgentProfilePage extends StatefulWidget {
  const AgentProfilePage({Key? key}) : super(key: key);

  @override
  State<AgentProfilePage> createState() => _AgentProfilePageState();
}

class _AgentProfilePageState extends State<AgentProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: false,
        leading: InkWell(
            onTap: (){},
            child: Icon(Icons.menu, size: 16.5.sp, color: secondaryWhite,)),
        title: Text("Agent Profile", style: myStyleMontserrat(18.sp, secondaryWhite, FontWeight.w400),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
      padding: EdgeInsets.all(12),
      width: double.infinity,
      color: primaryWhite,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 116.h,
                      width: 116.w,
                      decoration: BoxDecoration(shape: BoxShape.circle,
                      color: primaryOrange),
                    ),
                  ),
              flex: 2,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AgentUpdateProfile()));
                        },
                          child: Image.asset("images/edit.png", height: 32.h, width: 32.h,)),
                      SizedBox(height: 16.h,),
                      Text("Shahid Mahmum", style: myStyleMontserrat(16.sp, homeItemColor, FontWeight.w600),),
                      Text("mahmum@gmail.com", style: myStyleMontserrat(12.sp, homeItemColor, FontWeight.w400),),
                    ],
                  ),
              flex: 2,),
            ],
          ),
          SizedBox(height: 12.h,),
          Divider(
            endIndent: 0,
            indent: 0,
            thickness: 1.h,
            color: bottomLabelColor,
          ),
          Text("Balance", style: myStyleMontserrat(16.sp, homeItemColor, FontWeight.w600),),
          Text("৳0.00", style: myStyleMontserrat(12.sp, homeItemColor, FontWeight.w500),),
          Divider(
            endIndent: 0,
            indent: 0,
            thickness: 1.h,
            color: bottomLabelColor,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Role: Agent", style: myStyleMontserrat(12.sp, homeItemColor, FontWeight.w600),),
                SizedBox(height: 8.h,),
                Text("CONTACT INFORMATION:", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                // SizedBox(height: 12.h,),
                // Row(children: [
                //   Image(image: AssetImage("images/call.png"),),
                //   SizedBox(width: 12.w,),
                //   Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text("Mobile", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                //       Text("01711369672", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                //     ],
                //   )
                // ],),Row(children: [
                //   Image(image: AssetImage("images/mail.png"),),
                //   SizedBox(width: 12.w,),
                //   Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text("Email", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                //       Text("mahmum@gmail.com", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                //     ],
                //   )
                // ],),Row(children: [
                //   Image(image: AssetImage("images/call.png"),),
                //   SizedBox(width: 12.w,),
                //   Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text("Address", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                //       subtitle: Text("16/1 (9th Floor), Alhaz Shamsuddin Mansion, New Eskaton Garden Road,", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                //     ],
                //   )
                // ],),
                ListTile(
                  leading: Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Image.asset("images/call.png")),
                  title: Text("Mobile", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                  subtitle: Text("01711369672", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                ),
                ListTile(
                  leading: Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Image.asset("images/mail.png")),
                  title: Text("Email", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                  subtitle: Text("mahmum@gmail.com", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                ),
                ListTile(
                  leading: Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Image.asset("images/home.png")),
                  title: Text("Address", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                  subtitle: Text("16/1 (9th Floor), Alhaz Shamsuddin Mansion, New Eskaton Garden Road,", style: myStyleMontserrat(14.sp, homeItemColor, FontWeight.w600),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
