import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:massenger/controller_binding/view_model_binding.dart';
import 'package:massenger/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ViewModelBinding(),
      home: MyHomePage(),
    );
  }
}
