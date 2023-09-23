
import 'package:disaster_managment_sih/auth/auth_service.dart';
import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';
import 'package:disaster_managment_sih/firebase_options.dart';

import 'package:disaster_managment_sih/features/search/mapscreendemo.dart';
import 'package:disaster_managment_sih/orgs/OrgDetailPage.dart';
import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';
import 'package:disaster_managment_sih/orgs/homepageorg.dart';

import 'package:disaster_managment_sih/users/disaster_info_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'chat/chathomescreen.dart';
import 'features/authScreens/landingscreen.dart';
import 'features/authScreens/signuppage.dart';
import 'features/home/homepage.dart';
import 'landingpage.dart';
import 'location_services.dart/location_service.dart';
import 'orgs/navpageorg.dart';
import 'orgs/signupPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const MyApp());
// }

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
              // fontFamily: 'Montserrat',
              primarySwatch: Colors.blue,
            ),
            home: const LandingPage(),
          );
        });
  }
}
