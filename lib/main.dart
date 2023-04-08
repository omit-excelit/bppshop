import 'package:bppshop/const/customer_table.dart';
import 'package:bppshop/pages/bottom_nav_bar/add_customer_page.dart';
import 'package:bppshop/pages/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:bppshop/pages/bottom_nav_bar/home_page.dart';
import 'package:bppshop/pages/login_page.dart';
import 'package:bppshop/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

//check git credential

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),

          home: SigninPage(),
        );
      },
    );
  }
}
