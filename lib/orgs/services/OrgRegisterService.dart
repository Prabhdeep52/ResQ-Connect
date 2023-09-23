import 'dart:convert';

import 'package:disaster_managment_sih/features/SOS/sosService/disasterModel.dart';
import 'package:disaster_managment_sih/orgs/services/OrgClass.dart';
import 'package:http/http.dart' as http;

Future<void> postOrgDataToServer({
  required String name,
  required String type,
  required String description,
  required String location,
}) async {
  final OrgRegistration = Organization(
      name: name, description: description, location: location, OrgType: type);

  final jsonBody = jsonEncode(OrgRegistration.toMap()); // CHECK HERE

  const apiUrl =
      'https://resq-api.onrender.com/orgPost'; // Replace with your API URL

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
