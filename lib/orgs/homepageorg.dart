import 'package:disaster_managment_sih/orgs/navpageorg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/home/widgets/alertTile.dart';
import '../features/home/widgets/org_alert_tile.dart';

class HomePageOrg extends StatefulWidget {
  const HomePageOrg({super.key});

  @override
  State<HomePageOrg> createState() => _HomePageOrgState();
}

class _HomePageOrgState extends State<HomePageOrg> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/people.png")),
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Reported Disasters",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
                ),
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                      padding:
                          EdgeInsets.only(left: 12.w, bottom: 20.h, top: 10.h),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Food Shortage",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 6.h,
                                ),
                                SizedBox(
                                  height: 50.h,
                                  width: 180.w,
                                  child: Text(
                                    "The area is flooded with water and people are stuck",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.location_pin,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text("Delhi")
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: SizedBox(
                                  width: 110.w,
                                  child: Image.asset(
                                      "assets/images/AmericanFlag.png")),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
