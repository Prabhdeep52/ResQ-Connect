import 'dart:convert';

import 'package:disaster_managment_sih/features/SOS/sosService/disasterModel.dart';
import 'package:disaster_managment_sih/features/home/widgets/snackbar.dart';
import 'package:http/http.dart' as http;

// Future<void> postDataToServer({
//   required String name,
//   required String dtype,
//   required String description,
//   required String contact,
//   required String location,
//   // List<String>? image,

//   required String date,
//   required String time,
//   required String status,
// }) async {
//   final disasterReport = DisasterReport(
//     name: name,
//     dtype: dtype,
//     description: description,
//     contact: contact,
//     location: location,
//     date: date,
//     time: time,
//     status: status,
//   );

//   final jsonBody = jsonEncode(disasterReport.toJson());

//   const apiUrl = 'https://resq-api.onrender.com/reportPost';

//   final response = await http.post(
//     Uri.parse(apiUrl),
//     headers: {'Content-Type': 'application/json'},
//     body: jsonBody,
//   );

//   if (response.statusCode == 200) {
//     print('Data posted successfully!');
//   } else {
//     print('Failed to post data: ${response.statusCode}');
//   }
// }
import 'package:http_parser/http_parser.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> uploadReport({
  required context,
  required String name,
  required String description,
  required String contact,
  required String location,
  required String dtype,
  required String date,
  required String time,
  required String status,
  required File imageFile,
}) async {
  try {
    final url = Uri.parse(
        'https://resq-api.onrender.com/reportPost'); // Replace with your server's URL

    final request = http.MultipartRequest('POST', url);

    // Add text fields
    request.fields['name'] = name;
    request.fields['dtype'] = dtype;
    request.fields['description'] = description;
    request.fields['contact'] = contact;
    request.fields['location'] = location;
    request.fields['date'] = date;
    request.fields['time'] = time;
    request.fields['status'] = status;

    // Add the image file if provided
    if (imageFile != null) {
      request.files.add(await http.MultipartFile.fromPath(
        'image',
        imageFile.path,
        contentType:
            MediaType('image', 'jpeg'), // Adjust content type as needed
      ));
    }

    final response = await request.send();

    if (response.statusCode == 200) {
      final responseJson = await response.stream.bytesToString();
      showSnackBar(context, '$responseJson');
      print('Response: $responseJson');
    } else {
      showSnackBar(context, ' ${response.statusCode}');
      print('Error: ${response.statusCode}');
    }
  } catch (error) {
    showSnackBar(context, '$error');
    print('Error: $error');
  }
}
