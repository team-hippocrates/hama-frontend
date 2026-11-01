import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // 배경
  static const Color background = Color(0xFFFAF9F4); // 화면 기본 배경
  static const Color surface = Colors.white; // 카드, 탭바

  // 노랑
  static const Color yellow = Color(0xFFFFFDA4); // 메인 카드, 코인 배지
  static const Color yellowLight = Color(0xFFFFFFF1); // 노랑 카드 안 태그

  // 파랑
  static const Color blue = Color(0xFF75A5CF); // 메인 버튼
  static const Color blueDeep = Color(0xFF3D6E98); // 강조 글자, 선택된 탭
  static const Color blueLight = Color(0xFFE6F0F8); // 복습 카드, 선택된 탭 배경

  // 글자
  static const Color textPrimary = Color(0xFF1E2A38); // 기본 글자
  static const Color textSecondary = Color(0xFF5A6675); // 보조 글자, 선택 안 된 탭
  static const Color textOnButton = Color(0xFF13263A); // 하늘색 버튼 위 글자
  static const Color textHint = Color(0xFFA1A1AA); // 입력칸 안내 문구

  // 기타
  static const Color border = Color(0xFFEFECE3); // 카드 테두리
  static const Color coin = Color(0xFFF2D23C); // 코인 동그라미
  static const Color coinText = Color(0xFF7A5A00);
  static const Color danger = Color(0xFFB4483A); // "2일 지남" 같은 경고 글자
}
