import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_puzzlee/view/home.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: SlidingHome(),
    ),
  ));
}
