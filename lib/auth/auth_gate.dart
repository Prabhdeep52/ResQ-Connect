import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../orgs/homepageorg.dart';
import '../orgs/loginorg.dart';
import '../orgs/navpageorg.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const BottomNavBarOrg();
          } else {
            return const LoginOrg();
          }
        },
        stream: FirebaseAuth.instance.authStateChanges(),
      ),
    );
  }
}
