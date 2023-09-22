import 'package:disaster_managment_sih/features/home/widgets/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loginorg.dart';

class SignUpOrg extends StatefulWidget {
  const SignUpOrg({super.key});

  @override
  State<SignUpOrg> createState() => _SignUpOrgState();
}

class _SignUpOrgState extends State<SignUpOrg> {
  final TextEditingController empIdController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    empIdController.dispose();
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
            controller: empIdController,
            text1: "Empployee Id",
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
                        backgroundColor: Color(0xFFF4727A)),
                    onPressed: () {},
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginOrg()));
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
