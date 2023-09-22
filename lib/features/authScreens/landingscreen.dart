import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                "ResQ",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            // Container(
            //   height: 70,
            //   width: double.infinity,
            //   child: Center(
            //       child: Text(
            //     "Community",
            //     style: TextStyle(
            //         fontFamily: "Montserrat",
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xFFF4727A)),
            //   )),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       border: Border.all(color: Color(0xFFF4727A), width: 2)),
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // Container(
            //   height: 70,
            //   width: double.infinity,
            //   child: Center(
            //       child: Text(
            //     "User",
            //     style: TextStyle(
            //       fontFamily: "Montserrat",
            //       fontSize: 16,
            //       fontWeight: FontWeight.bold,
            //       color: Color(0xFFF4727A),
            //     ),
            //   )),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(color: Color(0xFFF4727A), width: 2),
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Continue As",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 140,
                  decoration: BoxDecoration(
                    // color: Color(0xFFF4727A),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("Community",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
                Container(
                  height: 120,
                  width: 140,
                  decoration: BoxDecoration(
                    // color: Color(0xFFF4727A),
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("User",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        )),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
