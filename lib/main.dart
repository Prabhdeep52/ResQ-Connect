import 'package:disaster_managment_sih/auth/services/auth_service.dart';
import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';
import 'package:disaster_managment_sih/firebase_options.dart';
import 'package:disaster_managment_sih/auth/screens/orgSide/loginPageorg.dart';
import 'package:disaster_managment_sih/auth/screens/orgSide/registerOrgScreen.dart';
import 'package:disaster_managment_sih/users/disaster_info_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'chat/chathomescreen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'auth/screens/publicSide/signuppagePublic.dart';
import 'features/home/homepage.dart';
import 'auth/screens/landingpage.dart';
import 'location_services.dart/location_service.dart';
import 'orgs/navpageorg.dart';
// import 'orgs/signupPage.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: const MyApp(),
    ),
  );
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
                // fontFamily: 'Montserrat',
                primarySwatch: Colors.blue,
              ),
              // home: const LandingPage(),
              // home: StreamBuilder(
              //   builder: (context, snapshot) {
              //     if (snapshot.hasData) {
              //       return const BottomNavBarOrg();
              //     } else {
              //       return const LoginOrg();
              //     }
              //   },
              //   stream: FirebaseAuth.instance.authStateChanges(),
              // )
              home: LandingPage());
        });
  }
}
