import 'package:disaster_managment_sih/features/bottomNav/bottomNavBar.dart';
import 'package:disaster_managment_sih/features/search/widgets/agencyTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 39.h,
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const BottomNavBar();
                }));
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(173, 172, 172, 1),
                  blurRadius: 20,
                  offset: Offset(0, 6))
            ], borderRadius: BorderRadius.circular(15), color: Colors.white),
            height: 53.h,
            margin: EdgeInsets.only(
              left: 10.w,
              right: 10.w,
            ),
            child: TextFormField(
              style: const TextStyle(backgroundColor: Colors.white),
              autocorrect: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  Icons.filter_list_outlined,
                  color: Colors.black,
                ),
                hintText: "Search communities ",
                hintStyle:
                    TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w200),
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          const Center(child: Text("Search results ")),

          // Container(
          //   decoration: BoxDecoration(color: Colors.blueAccent),
          //   height: 50.h,
          //   width: 40.w,
          //   child: ListView.builder(
          //     itemCount: 5,
          //     scrollDirection: Axis.vertical,
          //     itemBuilder: (context, index) {
          //       return AgencyTile();
          //       // return Padding(
          //       //   padding: EdgeInsets.only(left: 13.w, top: 13.h),
          //       //   child: Stack(
          //       //     children: [
          //       //       Container(
          //       //         margin: EdgeInsets.only(right: 25.w, top: 10.h),
          //       //         height: 230.h,
          //       //         width: 300.w,
          //       //         child: Image.asset("assets/images/backgroundTile.png",
          //       //             fit: BoxFit.fill),
          //       //         // child: Text("pae"),
          //       //       ),
          //       //       Container(
          //       //           margin: EdgeInsets.only(left: 10.w, top: 20.h),
          //       //           child: Text(
          //       //             "Food shortage in Syria",
          //       //             style:
          //       //                 TextStyle(fontSize: 15.sp, color: Colors.white),
          //       //           )),
          //       //     ],
          //       //   ),
          //       // );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
