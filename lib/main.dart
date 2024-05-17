import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systems/AppThemes.dart';
import 'package:systems/WebSystem/Dashboard/Dashboard.dart';
import 'package:systems/WebSystem/Home.dart';
import 'package:systems/WebSystem/Resources/Languages.dart';

import 'AppBindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Systems',
      initialRoute: '/dashboard',
      getPages: [
        GetPage(name: '/', page: () => WebHomeScreen()),
        GetPage(name: '/dashboard', page: () => DashBoard()),
        // Add more routes as needed
      ],

      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: WebLanguages(),
      initialBinding: AppBindings(),
      theme: AppThemes.lightTheme,
    );
  }
}
