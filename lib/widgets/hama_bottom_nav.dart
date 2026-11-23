import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class HamaBottomNav extends StatelessWidget {
  const HamaBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  static const _items = [
    _NavItem('assets/icons/tab_home.svg', '홈'),
    _NavItem('assets/icons/tab_quiz.svg', '퀴즈'),
    _NavItem('assets/icons/tab_shop.svg', '샵'),
    _NavItem('assets/icons/tab_mypage.svg', '마이페이지'),
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
            color: Color(0x1A1E2A38),
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
              behavior: HitTestBehavior.opaque,
              child: Container(
                decoration: BoxDecoration(
                  color: selected ? AppColors.blueLight : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      _items[i].iconPath,
                      width: 22,
                      height: 22,
                      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                    ),
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

// 탭 하나의 아이콘 경로 + 이름
class _NavItem {
  const _NavItem(this.iconPath, this.label);
  final String iconPath;
  final String label;
}
