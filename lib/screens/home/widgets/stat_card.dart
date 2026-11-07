import 'package:flutter/material.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.label,
    required this.value,
    required this.caption,
  });

  final String label; // "연속 출석"
  final String value; // "6일째"
  final String caption; // "내일 7일 달성 시 +5"

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      padding: const EdgeInsets.fromLTRB(16, 17, 16, 0),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTextStyles.label),
          const SizedBox(height: 6),
          Text(value, style: AppTextStyles.number),
          const SizedBox(height: 9),
          Text(caption, style: AppTextStyles.caption),
        ],
      ),
    );
  }
}
