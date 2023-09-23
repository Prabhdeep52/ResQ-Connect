import 'package:disaster_managment_sih/auth/auth_service.dart';
import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';

import 'package:disaster_managment_sih/features/home/widgets/customtextfield.dart';
import 'package:disaster_managment_sih/orgs/signUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final TextEditingController empIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void signIn() async {
    final authService = Provider.of<AuthService>(context, listen: false);
    try {
      await authService.signInWithEmailandPassword(
          emailController.text, passwordController.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();

    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/loginart.png"))),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Log In",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomTextField(
            maxLines: 1,
            controller: emailController,
            text1: "Email",
          ),
          CustomTextField(
            maxLines: 1,
            controller: passwordController,
            text1: "Password",
          ),
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF4727A)),
                    onPressed: () {
                      signIn();
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("New To ResQ? Sign Up"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpOrg()));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(
                          0xFFF4727A,
                        ),
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ]),
      )),
    );
  }
}
