import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class HamaBottomNav extends StatelessWidget {
  const HamaBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex; // 지금 선택된 탭 번호 (0~3)
  final ValueChanged<int> onTap; // 탭을 눌렀을 때 실행할 함수

  static const _items = [
    _NavItem(Icons.home_outlined, '홈'),
    _NavItem(Icons.check_circle_outline, '퀴즈'),
    _NavItem(Icons.shopping_bag_outlined, '샵'),
    _NavItem(Icons.bar_chart, '통계'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 28),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(26),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A1E2A38), // 그림자 (남색 10% 투명도)
            blurRadius: 14,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        spacing: 4,
        children: List.generate(_items.length, (i) {
          final selected = i == currentIndex;
          final color = selected ? AppColors.blueDeep : AppColors.textSecondary;

          return Expanded(
            child: GestureDetector(
              onTap: () => onTap(i),
              behavior: HitTestBehavior.opaque, // 빈 공간을 눌러도 반응하게
              child: Container(
                decoration: BoxDecoration(
                  color: selected ? AppColors.blueLight : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(_items[i].icon, size: 22, color: color),
                    const SizedBox(height: 3),
                    Text(
                      _items[i].label,
                      style: AppTextStyles.navLabel.copyWith(color: color),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

// 탭 하나의 아이콘 + 이름을 묶어두는 작은 클래스
class _NavItem {
  const _NavItem(this.icon, this.label);
  final IconData icon;
  final String label;
}
