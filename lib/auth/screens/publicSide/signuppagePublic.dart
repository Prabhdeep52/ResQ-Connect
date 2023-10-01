import 'package:disaster_managment_sih/auth/services/auth_service.dart';
import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';
import 'package:disaster_managment_sih/features/home/widgets/customtextfield.dart';
import 'package:disaster_managment_sih/orgs/homepageorg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'loginpagePublic.dart';

class SignUpPublic extends StatefulWidget {
  const SignUpPublic({super.key});

  @override
  State<SignUpPublic> createState() => _SignUpPublicState();
}

class _SignUpPublicState extends State<SignUpPublic> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cnfmpassController = TextEditingController();
  bool isSendingReq = false;
  void signUp() async {
    if (passwordController.text != cnfmpassController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Passwords do not Match! ")));
      return;
    }
    if (userNameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Passwords do not Match! ")));
      return;
    }

    final authService = Provider.of<AuthService>(context, listen: false);

    try {
      setState(() {
        isSendingReq = true;
      });
      await authService.signUpWithEmailPassword(emailController.text,
          passwordController.text, userNameController.text);
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
      print("sign up success");
    } catch (e) {
      setState(() {
        isSendingReq = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }
  //   void signUpUser() async {
  //   FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
  //     email: emailController.text,
  //     password: passwordController.text,
  //     context: context,
  //   );
  // }

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
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
          // const Text(
          //   "Greetings,",
          //   style: TextStyle(
          //       fontFamily: "Montserrat",
          //       fontSize: 28,
          //       fontWeight: FontWeight.bold),
          // ),
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
                "Sign Up",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          CustomTextField(
            maxLines: 1,
            controller: userNameController,
            text1: "Username",
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
          CustomTextField(
            maxLines: 1,
            controller: cnfmpassController,
            text1: "Confirm Password",
          ),
          SizedBox(
            height: 90.h,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
                height: 50,
                width: double.infinity,
                child: isSendingReq
                    ? Center(
                        child: CircularProgressIndicator(
                          valueColor:
                              new AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF4727A)),
                        onPressed: () {
                          signUp();
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
              const Text("Already have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPagePublic()));
                  },
                  child: const Text(
                    "Sign In",
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
