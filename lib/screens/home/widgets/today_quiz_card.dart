import 'package:flutter/material.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';
import '../../../widgets/primary_button.dart';

class TodayQuizCard extends StatelessWidget {
  const TodayQuizCard({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Stack(
        children: [
          // 오른쪽 위 흰 동그라미 장식
          Positioned(
            top: -30,
            right: -30,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.55),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // TODO(이미지): 하마 이미지로 교체
          Positioned(
            top: 8,
            right: 34,
            child: Container(
              width: 96,
              height: 117,
              decoration: BoxDecoration(
                color: AppColors.blueLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.image_outlined, color: AppColors.blue),
            ),
          ),
          // 글자 + 태그 + 버튼
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 28, 22, 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('오늘의 상식 한 입', style: AppTextStyles.caption),
                const SizedBox(height: 3),
                const Text('오늘 퀴즈 문제', style: AppTextStyles.headline),
                const SizedBox(height: 14),
                const Row(
                  children: [
                    _Tag('#8개 분야 랜덤'),
                    SizedBox(width: 6),
                    _Tag('#AI 출제'),
                  ],
                ),
                const Spacer(),
                PrimaryButton(
                  text: '이어서 풀기',
                  height: 52,
                  onPressed: onContinue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 노란 카드 안의 작은 태그
class _Tag extends StatelessWidget {
  const _Tag(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.yellowLight,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(text, style: AppTextStyles.caption),
    );
  }
}
