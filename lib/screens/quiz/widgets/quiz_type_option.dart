import 'package:flutter/material.dart';
import '../../../models/quiz_options.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class QuizTypeOption extends StatelessWidget {
  const QuizTypeOption({
    super.key,
    required this.type,
    required this.selected,
    required this.onTap,
  });

  final QuizType type;
  final bool selected; // 선택됐는지
  final VoidCallback onTap; // 눌렀을 때 실행할 함수

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 73,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: selected ? AppColors.blueLight : AppColors.surface,
          border: Border.all(
            color: selected ? AppColors.blue : AppColors.border,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected ? AppColors.surface : AppColors.yellow,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(type.badge, style: AppTextStyles.badge),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(type.title, style: AppTextStyles.optionTitle),
                  const SizedBox(height: 4),
                  Text(type.description, style: AppTextStyles.optionDesc),
                ],
              ),
            ),
            if (selected)
              const Icon(Icons.check, size: 22, color: AppColors.blueDeep),
          ],
        ),
      ),
    );
  }
}
