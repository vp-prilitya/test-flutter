import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:test_flutter/app/views/home/home.dart';

void main() {
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Flutter',
      home: HomeView(),
    ),
  );
}
