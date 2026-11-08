import 'package:flutter/material.dart';
import '../../models/quiz_options.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../widgets/primary_button.dart';
import 'widgets/difficulty_selector.dart';
import 'widgets/quiz_type_option.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  QuizType _type = QuizType.multipleChoice; // 처음엔 객관식 선택
  QuizDifficulty _difficulty = QuizDifficulty.normal; // 처음엔 난이도 중

  static const _categories = [
    '역사',
    '과학',
    '경제',
    '직장생활 예의',
    '문화',
    '일반상식',
    '스포츠',
    '대중문화',
  ];

  void _requestQuiz() {
    // TODO(백엔드): 선택한 유형(_type)·난이도(_difficulty)로 문제 요청 API 호출
    // TODO: 받은 문제로 문제 풀이 화면 이동 (다음 단계에서 연결)
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('어떤 퀴즈를 풀까요?', style: AppTextStyles.headline),
            const SizedBox(height: 7),
            const Text('분야는 하마가 8개 중에서 골라 드려요.', style: AppTextStyles.subtitle),
            const SizedBox(height: 24),
            const Text('문제 유형', style: AppTextStyles.sectionLabel),
            const SizedBox(height: 11),
            Column(
              spacing: 10,
              children: QuizType.values.map((type) {
                return QuizTypeOption(
                  type: type,
                  selected: type == _type,
                  onTap: () => setState(() => _type = type),
                );
              }).toList(),
            ),
            const SizedBox(height: 22),
            const Text('난이도', style: AppTextStyles.sectionLabel),
            const SizedBox(height: 11),
            DifficultySelector(
              selected: _difficulty,
              onChanged: (level) => setState(() => _difficulty = level),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: _categories.map((name) => _CategoryChip(name)).toList(),
            ),
            const SizedBox(height: 20),
            PrimaryButton(text: '문제 받기', onPressed: _requestQuiz),
          ],
        ),
      ),
    );
  }
}

// 분야 태그 (누르는 기능 없이 보여주기만 함)
class _CategoryChip extends StatelessWidget {
  const _CategoryChip(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
      decoration: BoxDecoration(
        color: AppColors.chip,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        name,
        style: AppTextStyles.caption.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
