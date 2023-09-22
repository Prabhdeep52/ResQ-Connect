import 'package:disaster_managment_sih/features/OrgSide/OrgDetail/OrgDetailPage.dart';
import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';
import 'package:disaster_managment_sih/users/disaster_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/authScreens/landingscreen.dart';
import 'features/authScreens/signuppage.dart';
import 'features/home/homepage.dart';
import 'orgs/navpageorg.dart';
import 'orgs/signupPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'SIH App',
            theme: ThemeData(
              fontFamily: 'Montserrat',
              primarySwatch: Colors.blue,
            ),
            home: const DisasterInfo(),
          );
        });
  }
}
