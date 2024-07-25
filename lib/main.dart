import 'package:advance_exam_app/views/detailpage.dart';
import 'package:advance_exam_app/views/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Homepage(),
      'detail': (context) => const DetailPage(),
    },
  ));
}
