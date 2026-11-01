import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue, // 이 색을 기준으로 버튼·선택 표시 색 등을 자동으로 맞춤
      primary: AppColors.blue,
    ),
    scaffoldBackgroundColor: Colors.white, // 화면 기본 배경
    textTheme: const TextTheme(
      headlineMedium: AppTextStyles.headline,
      titleMedium: AppTextStyles.cardTitle,
      bodyMedium: AppTextStyles.body, // Text 위젯 기본 스타일
      bodySmall: AppTextStyles.caption,
      labelLarge: AppTextStyles.button,
    ),
  );
}
