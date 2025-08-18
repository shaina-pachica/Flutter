import 'package:flutter/material.dart';
import 'app/routes/app_pages.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFlyn App (Shaina Pachica)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'ABeeZee',
      ),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
