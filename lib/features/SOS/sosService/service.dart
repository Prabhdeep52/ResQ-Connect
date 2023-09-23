import 'dart:convert';

import 'package:disaster_managment_sih/features/SOS/sosService/disasterModel.dart';
import 'package:http/http.dart' as http;

Future<void> postDataToServer({
  required String name,
  required String dtype,
  required String description,
  required String contact,
  required String location,
  // List<String>? image,
  required String date,
  required String time,
  required String status,
}) async {
  // final Uri apiUrl = Uri.parse('https://resq-api.onrender.com/reportPost');
  // final String serverUrl =
  //     'https://resq-api.onrender.com/reportPost'; // Replace with your server URL

  // final Map<String, dynamic> requestBody = {
  //   "name": "Ayush Flutter",
  //   "dtype": s,
  // };
  final disasterReport = DisasterReport(
    name: name,
    dtype: dtype,
    description: description,
    contact: contact,
    location: location,
    date: date,
    time: time,
    status: status,
  );

  final jsonBody = jsonEncode(disasterReport.toJson());
  // final response = await http.post(
  //   apiUrl,
  //   headers: <String, String>{
  //     'Content-Type': 'application/json; charset=UTF-8',
  //   },
  //   body: jsonEncode(body),
  // );
  const apiUrl =
      'https://resq-api.onrender.com/reportPost'; // Replace with your API URL

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {'Content-Type': 'application/json'},
    body: jsonBody,
  );

  if (response.statusCode == 200) {
    print('Data posted successfully!');
  } else {
    print('Failed to post data: ${response.statusCode}');
  }
}
