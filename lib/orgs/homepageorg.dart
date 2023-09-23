import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './services/reportsServices.dart';
import '../features/home/widgets/alertTile.dart';
import '../features/home/widgets/org_alert_tile.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePageOrg extends StatefulWidget {
  const HomePageOrg({Key? key});

  @override
  State<HomePageOrg> createState() => _HomePageOrgState();
}

class _HomePageOrgState extends State<HomePageOrg> {
  String description = '';
  List<dynamic> data = [];

  @override
  void initState() {
    // getdate();
    fetchData();
    super.initState();
  }

  Future<void> fetchData() async {
    try {
      final responseData = await fetchDataFromApi();
      final res = responseData[0]["name"].toString();
      print(responseData[0]["name"].toString());
      print("hello");
      setState(() {
        data = responseData;
      });
    } catch (e) {
      // Handle any errors that occur during the HTTP request
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17.w, top: 12.h),
          child: Column(
            children: [
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
                      fontSize: 24.sp,
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none,
                      size: 30.sp,
                    ),
                  ),
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
                    image: AssetImage("assets/images/people.png"),
                    fit: BoxFit.cover,
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
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
                    fontSize: 22.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              if (data.length != 0)
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 2.w,
                          bottom: 20.h,
                          top: 10.h,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // "Food Shortage",
                                    data[index]["dtype"] ?? "Disaster",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                    width: 180.w,
                                    child: Text(
                                      // "The area is flooded with water and people are stuck",
                                      data[index]["description"] ??
                                          "description",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_pin,
                                        size: 14,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        data[index]["location"] ?? "location ",
                                      ),
                                      Text(data[index]["date"] ??
                                          " date " + data[index][" time"] ??
                                          " time ")
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
                                    "assets/images/AmericanFlag.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              if (data.length == 0)
                Container(
                  padding: EdgeInsets.only(top: 150.h),
                  child: Text("No reported disasters "),
                )
            ],
          ),
        ),
      ),
    );
  }
}
