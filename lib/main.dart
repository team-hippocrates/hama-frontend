import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/main_screen.dart';
import 'screens/auth/login_screen.dart'; // ← import 추가

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '똑똑하마',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const LoginScreen(),
    );
  }
}
