import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SOSscreen extends StatelessWidget {
  const SOSscreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool abc = false;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 39.h,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Are you in emergency?",
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 25.h),
              height: 55.h,
              width: 236.w,
              child: Text(
                "Press the below button and help  will reach you soon",
                maxLines: 4,
                // overflow: TextOverflow.ellipsis,
                // textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          Center(
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 222.sp,
                    width: 222.sp,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(248, 210, 212, 1),
                        borderRadius: BorderRadius.circular(100.sp)),
                  ),
                  Container(
                    height: 191.sp,
                    width: 191.sp,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(245, 170, 174, 1),
                        borderRadius: BorderRadius.circular(100.sp)),
                  ),
                  Container(
                    height: 160.sp,
                    width: 160.sp,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 114, 122, 1),
                        borderRadius: BorderRadius.circular(100.sp)),
                  ),
                  Text(
                    "SOS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 150.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16.w),
                height: 92.h,
                width: 352.w,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(137, 133, 133, 1),
                          blurRadius: 4,
                          offset: Offset(0, 2))
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: Text(
                        "Your Address",
                        style: TextStyle(
                            fontSize: 17.sp, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: SizedBox(
                        width: 260.w,
                        child: Text(
                          "New york street , block c switzerland pincode - 629191",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
