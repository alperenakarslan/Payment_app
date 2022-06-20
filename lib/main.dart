import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'FourthPage.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      home: const Home(),
    );
  }
}
