import 'package:flutter/material.dart';
import 'app/routes/app_pages.dart';
import 'package:get/get.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFlyn App (Shaina Pachica)',
      theme: ThemeData.light(),
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
    );
  }
}
