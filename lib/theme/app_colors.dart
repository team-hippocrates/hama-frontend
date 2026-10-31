import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // 이 클래스는 색상 보관용이라 객체를 만들 필요가 없어서 막아둠

  // 메인 색상
  static const Color primary = Color(0xFF4B738E); // 로고, 강조
  static const Color yellow = Color(0xFFFFFDA4); // 메인 노랑
  static const Color lightBlue = Color(0xFFC7DFF5); // 보조 파랑

  // 배경 그라데이션 (위 → 아래)
  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFCFBDB), Color(0xFFFFFD7D)],
  );

  // 글자 색상
  static const Color textLabel = Color(0xFF422600); // 입력칸 위 라벨
  static const Color textSub = Color(0xFF505050); // 회원가입 등 링크
  static const Color textHint = Color(0xFFA7A7A7); // 입력칸 안내 문구

  // 기타
  static const Color disabled = Color(0xFFB9B9B9); // 비활성 버튼
  static const Color border = Color(0xFFEDEDED); // 입력칸 테두리
}
