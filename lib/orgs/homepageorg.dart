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
          padding: EdgeInsets.only(left: 17.w, top: 12.h),
          child: Column(
            children: [
// <<<<<<< asad
//               const SizedBox(
//                 height: 10,
//               ),
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Welcome",
//                   style: TextStyle(
//                       fontFamily: "Roboto",
//                       fontWeight: FontWeight.w400,
//                       fontSize: 24),
//                 ),

              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 24.sp),
                  ),
                  SizedBox(
                    width: 200.w,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        size: 30.sp,
                      ))
                ],

              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/people.png")),
                    color: const Color.fromARGB(255, 255, 255, 255),


                    borderRadius: BorderRadius.circular(10.sp)),

              ),
              SizedBox(
                height: 20.h,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Reported Disasters",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400,
                      fontSize: 22.sp),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
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
                                const Text(
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

//                     return InkWell(
//                       onTap: () {},
//                       child: Container(
//                         // decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
//                         padding: EdgeInsets.only(
//                             left: 12.w, bottom: 20.h, top: 10.h),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Text(
//                                     "SOS 🆘",

                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.h,
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
                                  SizedBox(
                                    height: 12.h,
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
                                      Text("Sector 17 , delhi")
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
