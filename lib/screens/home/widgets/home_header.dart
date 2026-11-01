import 'package:flutter/material.dart';
import '../../../../../theme/app_colors.dart';
import '../../../../../theme/app_text_styles.dart';
import '../../../../../widgets/coin_badge.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.nickname, required this.coin});

  final String nickname;
  final int coin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text('$nickname님,\n안녕하세요!', style: AppTextStyles.headline),
        ),
        CoinBadge(coin: coin),
        const SizedBox(width: 8),
        Container(
          // 프로필 (나중에 하마 얼굴 이미지 넣을 자리)
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
            color: AppColors.blueLight,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
