import 'package:e_commers_app/pages/home_page.dart';
import 'package:e_commers_app/pages/login_page.dart';
import 'package:e_commers_app/utils/them.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isUser = false;

    return MaterialApp(
      theme: AppTeamData().appThemLight,
      debugShowCheckedModeBanner: false,
      home: isUser ? const HomePage() : const LoginPage(),
    );
  }
}
