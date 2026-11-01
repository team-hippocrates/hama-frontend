import 'package:flutter/material.dart';
import 'widgets/home_header.dart';
import 'widgets/today_quiz_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // TODO(백엔드): 유저 정보 API 연결 후 실제 값으로 교체 (닉네임, 보유 코인)
  static const _nickname = '히포크라테스';
  static const _coin = 128;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(nickname: _nickname, coin: _coin),
            const SizedBox(height: 25),
            TodayQuizCard(
              onContinue: () {
                // TODO: 퀴즈 화면으로 이동 (퀴즈 화면 만든 뒤 연결)
              },
            ),
            const SizedBox(height: 12),
            // 다음 단계에서 출석/정답률 카드 추가
          ],
        ),
      ),
    );
  }
}
