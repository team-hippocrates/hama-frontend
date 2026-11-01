import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'theme/app_colors.dart';
import 'theme/app_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '똑똑하마',
      debugShowCheckedModeBanner: false, // 오른쪽 위 DEBUG 띠 숨기기
      theme: AppTheme.light, // 만든 테마 연결
      home: const ThemeTestScreen(),
    );
  }
}

// 테마 확인용 임시 화면
class ThemeTestScreen extends StatelessWidget {
  const ThemeTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('똑똑하마', style: AppTextStyles.logo),
                SizedBox(height: 16),
                Text('화면제목 20', style: AppTextStyles.screenTitle),
                Text('본문 14 (기본 스타일)'),
                Text('아이디', style: AppTextStyles.label),
                Text(
                  'example@gmail.com (Pretendard)',
                  style: AppTextStyles.input,
                ),
                Text('화면 크기: ${MediaQuery.of(context).size}'), // ← 추가
              ],
            ),
          ),
        ),
      ),
    );
  }
}
