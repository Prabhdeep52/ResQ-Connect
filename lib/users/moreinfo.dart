import 'dart:io';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:disaster_managment_sih/features/SOS/sosService/service.dart';
import 'package:flutter/material.dart';
import 'package:multiple_images_picker/multiple_images_picker.dart';
import '../features/SOS/sosService/disasterModel.dart';
import '../features/home/widgets/customtextfield.dart';
import 'package:device_info/device_info.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';

import 'package:disaster_managment_sih/features/SOS/sosService/disasterModel.dart';
import 'package:http/http.dart' as http;

class MoreInfoOrg extends StatefulWidget {
  const MoreInfoOrg({super.key, required this.disasterType});
  final String disasterType;
  @override
  State<MoreInfoOrg> createState() => _MoreInfoOrgState();
}

String _selectedDisasterType = 'Earthquake';
final List<String> _disasterTypes = [
  'Earthquake',
  'Flood',
  'Wildfire',
  'Tornado',
  'Hurricane',
  'Volcano',
  'Industrial accident',
  'Terrorist attack',
  'Other',
];

class _MoreInfoOrgState extends State<MoreInfoOrg> {
  final TextEditingController detailsController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  List<Asset> imagesList = <Asset>[];
  String _error = 'No Error Detected';
  final _formKey = GlobalKey<FormState>();
  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultipleImagesPicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: imagesList,
        cupertinoOptions: const CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: const MaterialOptions(
          actionBarColor: "#4CAF50",
          actionBarTitle: "Select Images",
          allViewTitle: "All Images",
          useDetailsView: false,
          selectCircleStrokeColor: "#8BC34A",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    if (!mounted) return;

    setState(() {
      imagesList = resultList;
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                "Details",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a disaster type';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromARGB(31, 78, 77, 77),
                      controller: detailsController,
                      decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Disaster Details"),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                      cursorColor: const Color.fromARGB(31, 78, 77, 77),
                      controller: contactController,
                      decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Contact Details"),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Add Photos ",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: const Color.fromARGB(255, 50, 52, 65),
                child: IconButton(
                    onPressed: loadAssets, icon: const Icon(Icons.add)),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final now = new DateTime.now();
                        String time = DateFormat('HH:mm:ss').format(now);
                        String date =
                            DateFormat('yMd').format(now); // 28/03/2020

                        postDataToServer(
                            name: "name",
                            dtype: widget.disasterType,
                            description: detailsController.text,
                            contact: contactController.text,
                            location: "location",
                            date: date,
                            time: time,
                            status: "Ongoing");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 50, 52, 65)),
                      child: const Text("Submit"),
                    )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
