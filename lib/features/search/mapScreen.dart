import 'package:disaster_managment_sih/features/search/searchResultScreen.dart';
import 'package:disaster_managment_sih/features/search/widgets/agencyTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          decoration: !isSearch
              ? const BoxDecoration(
                  image: DecorationImage(
                  image: ExactAssetImage("assets/images/map.png"),
                  fit: BoxFit.fill,
                ))
              : const BoxDecoration(),
          child: !isSearch
              ? Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(173, 172, 172, 1),
                                blurRadius: 20,
                                offset: Offset(0, 6))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      height: 53.h,
                      margin: EdgeInsets.only(
                        left: 10.w,
                        right: 10.w,
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            isSearch = true;
                          });
                        },
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
                          hintStyle: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                  ],
                )
              : Column(children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(173, 172, 172, 1),
                              blurRadius: 20,
                              offset: Offset(0, 6))
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    height: 53.h,
                    margin: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          isSearch = true;
                        });
                      },
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
                        hintStyle: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 50.h,
                  // ),
                  // const Text("Search Results "),
                  SingleChildScrollView(
                    child: ListView.builder(
                      physics:
                          NeverScrollableScrollPhysics(), // Disable scrolling of this ListView
                      shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return AgencyTile();
                      },
                    ),
                  )
                ]),
        ),
      ),
    );
  }
}
