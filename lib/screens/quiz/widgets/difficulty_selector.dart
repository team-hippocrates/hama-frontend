import 'package:flutter/material.dart';
import '../../../models/quiz_options.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_styles.dart';

class DifficultySelector extends StatelessWidget {
  const DifficultySelector({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  final QuizDifficulty selected;
  final ValueChanged<QuizDifficulty> onChanged; // 고른 난이도를 알려주는 함수

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.surface,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 8,
        children: QuizDifficulty.values.map((level) {
          final isSelected = level == selected;
          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(level),
              behavior: HitTestBehavior.opaque,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.yellow : Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  level.label,
                  style: AppTextStyles.optionTitle.copyWith(
                    color: isSelected
                        ? AppColors.textPrimary
                        : AppColors.textSecondary,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
