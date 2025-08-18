import 'package:flutter/material.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFlyn App (SuperCoder Task)',
      initialRoute: AppPages.initial,
      routes: AppPages.routes,
    );
  }
}
