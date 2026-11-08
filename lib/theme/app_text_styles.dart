import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // ── BM JUA (제목, 숫자) ──
  static const TextStyle headline = TextStyle(
    // "하마님, 안녕하세요!"
    fontFamily: 'BMJUA',
    fontSize: 24,
    height: 1.3,
    color: AppColors.textPrimary,
  );
  static const TextStyle number = TextStyle(
    // "6일째", "86%"
    fontFamily: 'BMJUA',
    fontSize: 28,
    height: 1.1,
    color: AppColors.textPrimary,
  );
  static const TextStyle cardTitle = TextStyle(
    // "기한 지난 문제 4개"
    fontFamily: 'BMJUA',
    fontSize: 21,
    color: AppColors.textPrimary,
  );

  // ── Pretendard (본문, 버튼) ──
  static const TextStyle body = TextStyle(
    // 목록 글자
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static const TextStyle label = TextStyle(
    // "연속 출석"
    fontFamily: 'Pretendard',
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.textSecondary,
  );
  static const TextStyle caption = TextStyle(
    // "내일 7일 달성 시 +5"
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.blueDeep,
  );
  static const TextStyle button = TextStyle(
    // "이어서 풀기"
    fontFamily: 'Pretendard',
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.textOnButton,
  );
  static const TextStyle navLabel = TextStyle(
    // 탭 "홈", "퀴즈"
    fontFamily: 'Pretendard',
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle coin = TextStyle(
    // 코인 숫자 "128"
    fontFamily: 'BMJUA',
    fontSize: 17,
    color: AppColors.textPrimary,
  );
  static const TextStyle subtitle = TextStyle(
    // "분야는 하마가 8개 중에서…"
    fontFamily: 'Pretendard',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
  static const TextStyle sectionLabel = TextStyle(
    // "문제 유형", "난이도"
    fontFamily: 'Pretendard',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static const TextStyle optionTitle = TextStyle(
    // "객관식", 난이도 "하/중/상"
    fontFamily: 'Pretendard',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static const TextStyle optionDesc = TextStyle(
    // "보기 4개 중 하나를 골라요"
    fontFamily: 'Pretendard',
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );
  static const TextStyle badge = TextStyle(
    // 네모 안 "4", "OX", "가"
    fontFamily: 'BMJUA',
    fontSize: 18,
    color: AppColors.textPrimary,
  );
}
