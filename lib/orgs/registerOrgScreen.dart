// ignore: file_names
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:disaster_managment_sih/orgs/services/OrgRegisterService.dart';
import 'package:image_picker/image_picker.dart';

import 'package:permission_handler/permission_handler.dart';
// import 'package:e_commerce_app/constants/utils.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:dotted_border/dotted_border.dart';

class AddProductScreen extends StatefulWidget {
  static const String routeName = "/add-product-screen";
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController OrgNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController LocationController = TextEditingController();
  final TextEditingController OrgTypeController = TextEditingController();
  // final AdminServices adminservices = AdminServices();
  String category = "Mobiles";
  final _addProductKey = GlobalKey<FormState>();
  List<File> images = [];

  @override
  void dispose() {
    super.dispose();
    OrgNameController.dispose();
    descriptionController.dispose();
    LocationController.dispose();
    OrgTypeController.dispose();
  }

  List<String> orgCategories = [
    "fire",
    "Earthquake",
    "Flood",
  ];

  late File pickedImageFile;

  void addImages() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage == null) {
      return;
    }

    setState(() {
      pickedImageFile = File(pickedImage.path);
      // images = pickedImageFile;
      images.add(pickedImageFile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            elevation: 0,
            flexibleSpace: Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 246, 246, 246)
                      // gradient: GlobalVariables.appBarGradient
                      ),
            ),
            title: Container(
              alignment: Alignment.center,
              child: const Text(
                "Register Orgs",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          )),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Form(
              key: _addProductKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    images.isNotEmpty
                        ? CarouselSlider(
                            items: images.map((e) {
                              return Builder(
                                  builder: ((BuildContext context) =>
                                      Image.file(
                                        e,
                                        fit: BoxFit.cover,
                                        height: 200,
                                      )));
                            }).toList(),
                            options: CarouselOptions(
                              viewportFraction: 1,
                              height: 210,
                            ))
                        : GestureDetector(
                            onTap: addImages,
                            child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(10),
                                dashPattern: const [10, 4],
                                strokeCap: StrokeCap.round,
                                child: Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.folder_open_outlined,
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Select images for Org",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey.shade400),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      controller: OrgNameController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Organization Name",
                        hintText: "Enter your Org name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      controller: descriptionController,
                      autocorrect: false,
                      maxLines: 6,
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Description",
                        hintText: "Enter the description of the Organization ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      controller: LocationController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Location",
                        hintText: "Enter the Location",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    TextFormField(
                      controller: OrgTypeController,
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: "Org Type",
                        hintText: "Enter the Organization type",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: OutlinedButton(
                        onPressed: () {
                          postOrgDataToServer(
                              name: OrgNameController.text,
                              type: OrgTypeController.text,
                              description: descriptionController.text,
                              location: LocationController.text);
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(350, 40)),
                          shape: MaterialStateProperty.all(
                            const ContinuousRectangleBorder(
                              borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(13),
                              ),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 48, 130, 201),
                          ),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
