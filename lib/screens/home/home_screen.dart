import 'package:flutter/material.dart';
import '../../models/review_item.dart';
import 'widgets/home_header.dart';
import 'widgets/review_card.dart';
import 'widgets/stat_card.dart';
import 'widgets/today_quiz_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // TODO(백엔드): 유저 정보 API 연결 후 실제 값으로 교체 (닉네임, 보유 코인)
  static const _nickname = '히포크라테스';
  static const _coin = 128;

  // TODO(백엔드): 출석·정답률 API 연결 후 실제 값으로 교체
  static const _streakDays = 6;
  static const _streakCaption = '내일 7일 달성 시 +5';
  static const _accuracy = 86;
  static const _todaySolved = 7;
  static const _todayCorrect = 6;

  // TODO(백엔드): 복습 목록 API 연결 후 실제 값으로 교체
  static const _overdueCount = 4;
  static const _reviewItems = [
    ReviewItem(question: '조선 최초의 한글 소설은?', dueLabel: '2일 지남', isOverdue: true),
    ReviewItem(question: '인플레이션의 뜻은?', dueLabel: '오늘', isOverdue: false),
  ];

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
            const SizedBox(height: 8),
            // TODO: 카드를 누르면 출석체크 화면으로 이동 (출석 화면 만든 뒤 연결)
            const Row(
              children: [
                Expanded(
                  child: StatCard(
                    label: '연속 출석',
                    value: '$_streakDays일째',
                    caption: _streakCaption,
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: StatCard(
                    label: '오늘 정답률',
                    value: '$_accuracy%',
                    caption: '$_todaySolved문제 중 $_todayCorrect문제 정답',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // TODO: 카드를 누르면 복습 화면으로 이동 (복습 화면 만든 뒤 연결)
            const ReviewCard(overdueCount: _overdueCount, items: _reviewItems),
          ],
        ),
      ),
    );
  }
}
