import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainik/presentation/controllers/country_binding.dart';
import 'package:zainik/presentation/pages/home_page.dart';

import 'language/languages.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      initialBinding: CountryBinding(),
      title: 'Tasks',
      home: const HomePage(),
    );
  }
}
