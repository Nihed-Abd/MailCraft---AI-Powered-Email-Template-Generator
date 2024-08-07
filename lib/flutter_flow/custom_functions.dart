import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? colorToString(Color? color) {
  // convert color type passes from paramtre to steing vlaue matches that color
  if (color == null) {
    return null;
  }
  final hexString =
      '#${color.value.toRadixString(16).padLeft(8, '0').substring(2)}';
  return hexString.toUpperCase();
}

String? convertToHtml(String? code) {
  // filter the code passes from paramtre to reeturn a only html code ( from < html doctype > to /html
  if (code == null) {
    return null;
  }
  final startIndex = code.indexOf('<!DOCTYPE html>');
  final endIndex = code.indexOf('</html>') + '</html>'.length;
  if (startIndex == -1 || endIndex == -1) {
    return null;
  }
  return code.substring(startIndex, endIndex);
}
