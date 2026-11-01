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
        color: AppColors.background,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('하마님, 안녕하세요!', style: AppTextStyles.headline),
                const Text('6일째', style: AppTextStyles.number),
                const Text('기한 지난 문제 4개', style: AppTextStyles.cardTitle),
                const Text('조선 최초의 한글 소설은? (기본 스타일)'),
                const Text('연속 출석', style: AppTextStyles.label),
                const Text('내일 7일 달성 시 +5', style: AppTextStyles.caption),
                Text('화면 크기: ${MediaQuery.of(context).size}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
