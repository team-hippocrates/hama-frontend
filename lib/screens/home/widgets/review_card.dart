import 'package:flutter/material.dart';
import '../../../models/review_item.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
    required this.overdueCount,
    required this.items,
  });

  final int overdueCount; // 기한 지난 문제 수
  final List<ReviewItem> items; // 카드에 보여줄 복습 문제들

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 17, 18, 18),
      decoration: BoxDecoration(
        color: AppColors.blueLight,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '복습할 시간이에요',
            style: AppTextStyles.label.copyWith(color: AppColors.blueDeep),
          ),
          const SizedBox(height: 8),
          Text('기한 지난 문제 $overdueCount개', style: AppTextStyles.cardTitle),
          const SizedBox(height: 10),
          Column(
            spacing: 8,
            children: items.map((item) => _ReviewRow(item: item)).toList(),
          ),
        ],
      ),
    );
  }
}

// 복습 문제 한 줄 (흰 바탕)
class _ReviewRow extends StatelessWidget {
  const _ReviewRow({required this.item});

  final ReviewItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item.question,
              style: AppTextStyles.body,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            item.dueLabel,
            style: AppTextStyles.caption.copyWith(
              color: item.isOverdue
                  ? AppColors.danger
                  : AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
