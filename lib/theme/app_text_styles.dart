import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // ── BM JUA ──
  static const TextStyle logo = TextStyle(
    fontFamily: 'BMJUA',
    fontSize: 32,
    color: AppColors.primary,
  );

  // ── SF Pro (fontFamily를 안 쓰면 아이폰 기본 폰트 = SF Pro) ──
  static const TextStyle screenTitle = // 화면제목
  TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.6,
  );
  static const TextStyle sectionTitle = // 섹션 제목
  TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.6,
  );
  static const TextStyle cardTitle = // 카드제목
  TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.6,
  );
  static const TextStyle body = // 본문
  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.6,
  );
  static const TextStyle caption = // 설명
  TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.6,
  );
  static const TextStyle button = // 버튼
  TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    height: 1.0,
  );
  static const TextStyle tab = // 탭
  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.6,
  );
  static const TextStyle label = TextStyle(
    // 입력칸 위 라벨
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textLabel,
  );

  // ── Pretendard ──
  static const TextStyle input = TextStyle(
    // 입력칸 글자
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.67, // 피그마 줄 높이 20px ÷ 글자 크기 12px
  );
}
