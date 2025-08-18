import 'package:flutter/material.dart';
import '../views/home_view.dart';


class AppPages {
  static const initial = '/';

  static final routes = {
    '/': (context) => const HomeView(),
    
  };
}
