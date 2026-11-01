import 'package:flutter/material.dart';
import 'widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // TODO(백엔드): 유저 정보 API 연결 후 실제 값으로 교체 (닉네임, 보유 코인)
  static const _nickname = '하마';
  static const _coin = 128;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 23, 20, 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(nickname: _nickname, coin: _coin),
            SizedBox(height: 15),
            // 다음 단계에서 카드들을 여기에 추가
          ],
        ),
      ),
    );
  }
}
