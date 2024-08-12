// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future sendEmail(
  BuildContext context,
  String? sentTo,
  String? name,
  String? message,
  String? subject,
) async {
  // Add your function code here!
  sentTo = sentTo ?? '';
  name = name ?? '';
  message = message ?? '';
  subject = subject ?? '';

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const service_id = "service_2u9ewqv";
  const template_id = "template_scngmoj";
  const user_id = "Z97SC-rPdQKZE5R3A";
  final response = await http.post(url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        "service_id": service_id,
        "template_id": template_id,
        "user_id": user_id,
        "template_params": {
          "subject": subject,
          "sentTo": sentTo,
          "name": name,
          "html_message": message,
        }
      }));
  return response.statusCode;
}
