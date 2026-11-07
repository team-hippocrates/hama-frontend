import 'package:flutter/material.dart';
import '../widgets/hama_bottom_nav.dart';
import 'home/home_screen.dart';
import 'quiz/quiz_screen.dart';
import 'shop/shop_screen.dart';
import 'mypage/mypage_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0; // 처음엔 홈(0번)

  final _screens = const [
    HomeScreen(),
    QuizScreen(),
    ShopScreen(),
    MyPageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: HamaBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
